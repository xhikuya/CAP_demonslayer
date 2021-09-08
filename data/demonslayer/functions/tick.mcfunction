execute as @a[tag=started] run function demonslayer:select
execute as @a[tag=selected_ability,scores={ability=2}] run function demonslayer:selected
execute as @a[scores={ds_racechoice=1..},tag=!racechosen] run function demonslayer:racechoice

execute as @a[scores={ability=2,stat_power=16..}] run scoreboard players set @s stat_power 0

execute as @a[scores={ds_death=1..,ability=2}] at @s run function demonslayer:dead
execute as @a[scores={ability=2},tag=!demon_boost] run function demonslayer:main_slayer
execute as @a[scores={ability=2},tag=demon_boost] run function demonslayer:main_demon

execute as @a[scores={stat_control=2..},predicate=demonslayer:waterbreathing] at @s run function demonslayer:breathing/water 
execute as @a[predicate=!demonslayer:waterbreathing] run clear @s carrot_on_a_stick{WaterBreathing:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{WaterBreathing:1b}}]}] run clear @s carrot_on_a_stick{WaterBreathing:1b}
execute as @a[nbt={Inventory:[{tag:{WaterBreathing:1b}}]}] run function demonslayer:breathing/water_clear
execute as @e[tag=ds_slayer] at @s run function demonslayer:ai/tanjiro/tick
scoreboard players add @a ds_formtime 0
scoreboard players remove @a[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players add @a ds_cooldown 0
scoreboard players remove @a[scores={ds_cooldown=1..}] ds_cooldown 1

scoreboard players set @a[scores={ds_kill=1..}] ds_kill 0
scoreboard players set @a[scores={ds_kill2=1..}] ds_kill2 0
