execute as @a[tag=started] run function demonslayer:select
execute as @a[tag=selected_ability,scores={ability=2}] run function demonslayer:selected
execute as @a[scores={ds_racechoice=1..},tag=!racechosen] run function demonslayer:racechoice

execute as @a[scores={ability=2,stat_power=13..}] run scoreboard players remove @s stat_power 1
execute as @a[scores={ability=2}] if predicate core:dmg run function demonslayer:dmg_reduction

execute as @a[scores={ds_death=1..,ability=2}] at @s run function demonslayer:dead
execute as @a[scores={ability=2},tag=!demon_boost] run function demonslayer:main_slayer
execute as @a[scores={ability=2},tag=demon_boost] run function demonslayer:main_demon

execute as @a[predicate=!demonslayer:waterbreathing] run clear @s carrot_on_a_stick{WaterBreathing:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{WaterBreathing:1b}}]}] run clear @s carrot_on_a_stick{WaterBreathing:1b}
execute as @a[predicate=!demonslayer:firebreathing] run clear @s carrot_on_a_stick{FireBreathing:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{FireBreathing:1b}}]}] run clear @s carrot_on_a_stick{FireBreathing:1b}

execute as @a[scores={stat_control=6..},predicate=demonslayer:waterbreathing,predicate=!demonslayer:firebreathing] at @s run function demonslayer:breathing/water 
execute as @a[scores={stat_control=6..},predicate=demonslayer:firebreathing] at @s run function demonslayer:breathing/fire 
execute as @a[tag=demon_boost,predicate=demonslayer:blooddemonart] at @s run function demonslayer:demon/bda/main

execute as @e[tag=ds_slayer] at @s run function demonslayer:ai/tanjiro/tick
execute as @e[tag=ds_demon] at @s run function demonslayer:ai/demon/tick

scoreboard players add @a ds_formtime 0
scoreboard players remove @a[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players add @a ds_cooldown 0
scoreboard players remove @a[scores={ds_cooldown=1..}] ds_cooldown 1
scoreboard players set @a[scores={ds_kill=1..}] ds_kill 0
scoreboard players set @a[scores={ds_kill2=1..}] ds_kill2 0
scoreboard players set @a[scores={ds_wist_break=1..}] ds_wist_break 0
execute as @e[tag=ds_proj] run function demonslayer:projectile
execute as @a[nbt=!{Inventory:[{Slot:103b}]},predicate=demonslayer:mask] if predicate core:click run function demonslayer:mask/equip

execute as @e[type=item,nbt={Item:{tag:{Cap:{BDA:0b}}}}] at @s run function demonslayer:demon/bda/random
