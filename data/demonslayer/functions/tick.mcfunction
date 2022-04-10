tag @a[scores={ability=2},tag=ds_cattack] remove ds_cattack
execute as @a[tag=started] run function demonslayer:select
execute as @a[tag=selected_ability,scores={ability=2}] run function demonslayer:selected
execute as @a[scores={ds_racechoice=1..},tag=!racechosen] run function demonslayer:racechoice

execute as @a[scores={ability=2,stat_power=13..}] run scoreboard players remove @s stat_power 1
execute as @a[scores={ability=2}] if predicate core:dmg run function demonslayer:dmg_reduction

execute as @a[scores={ds_death=1..,ability=2}] at @s run function demonslayer:dead
execute as @a[scores={ability=2},tag=!demon_boost] run function demonslayer:main_slayer
execute as @a[scores={ability=2},tag=demon_boost] run function demonslayer:main_demon

execute as @a[scores={stat_control=4..},predicate=demonslayer:breathing/water,predicate=!demonslayer:breathing/sun,predicate=!demonslayer:breathing/tanjiro] at @s run function demonslayer:breathing/water
execute as @a[scores={stat_control=6..},predicate=demonslayer:breathing/sun,predicate=!demonslayer:breathing/tanjiro] at @s run function demonslayer:breathing/fire 
execute as @a[scores={stat_control=6..},predicate=demonslayer:breathing/insect] at @s run function demonslayer:breathing/insect
execute as @a[scores={stat_control=5..}] if data entity @s SelectedItem.tag.Cap.Thunderbreathing at @s run function demonslayer:breathing/thunder

 execute as @a[scores={stat_control=6..},predicate=demonslayer:breathing/tanjiro] at @s run function demonslayer:breathing/tanjiro

execute as @a[nbt={SelectedItem:{tag:{Cap:{Nichirin:1b}}}}] at @s run function demonslayer:breathing/nichirin
execute as @a[nbt={SelectedItem:{tag:{Cap:{Bamboo:1b}}}}] at @s run function demonslayer:breathing/bamboo/main


execute as @e[tag=ds_tanjiro] at @s if entity @a[distance=..80] run function demonslayer:ai/tanjiro/tick
execute as @e[tag=ds_shinobu] at @s if entity @a[distance=..80] run function demonslayer:ai/shinobu/tick
execute as @e[tag=ds_kaigaku,tag=ds_slayer] at @s if entity @a[distance=..80] run function demonslayer:ai/kaigaku/tick
execute as @e[tag=ds_kaigaku,tag=ds_demon] at @s if entity @a[distance=..80] run function demonslayer:ai/kaigaku/demon

execute as @e[tag=ds_training] at @s if entity @a[distance=..30] run function demonslayer:ai/training/tick
execute as @e[tag=ds_demon,tag=!ds_kaigaku] at @s if entity @a[distance=..80] run function demonslayer:ai/demon/tick

scoreboard players add @a ds_formtime 0
scoreboard players remove @a[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players add @a ds_lhit 0
scoreboard players remove @a[scores={ds_lhit=1..}] ds_lhit 1
scoreboard players add @a ds_backstep 0
scoreboard players remove @a[scores={ds_backstep=1..}] ds_backstep 1
scoreboard players add @a ds_cooldown 0
scoreboard players remove @a[scores={ds_cooldown=1..}] ds_cooldown 1
scoreboard players add @a ds_ghostswordc 0
scoreboard players remove @a[scores={ds_ghostswordc=1..}] ds_ghostswordc 1
scoreboard players remove @a[scores={ds_finals_cool=1..}] ds_finals_cool 1
execute as @a if score @s ds_finals_cool matches 1 run function demonslayer:give_invitation
 
scoreboard players add @e[tag=ds_hitbox] var1 1
execute as @e[tag=ds_hitbox,scores={var1=5..}] run tp @s ~ -900 ~
kill @e[tag=ds_hitbox,scores={var1=5..}]

execute as @a[tag=health_see] at @s run function demonslayer:health_watch

scoreboard players set @a[scores={ds_kill=1..}] ds_kill 0
scoreboard players set @a[scores={ds_kill2=1..}] ds_kill2 0
scoreboard players set @a[scores={ds_wist_break=1..}] ds_wist_break 0
execute as @e[tag=ds_proj] run function demonslayer:projectile
execute as @a[nbt=!{Inventory:[{Slot:103b}]},predicate=demonslayer:mask] if predicate core:click run function demonslayer:mask/equip

execute as @a[predicate=demonslayer:in_selection] at @s run function demonslayer:final_selection/main
execute as @a[nbt={SelectedItem:{tag:{Cap:{Invitation:1b}}}},predicate=core:click] unless score @s ds_finalselection matches 8.. at @s run function demonslayer:final_selection/enter
execute as @a[scores={ds_finalselection=1..7},predicate=!demonslayer:in_selection] run function demonslayer:final_selection/death
execute as @e[type=item,nbt={Item:{tag:{Cap:{BDA:0b}}}}] at @s run function demonslayer:demon/bda/random
