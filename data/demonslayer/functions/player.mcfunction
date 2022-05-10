execute if entity @s[nbt={SelectedItem:{tag:{Cap:{Nichirin:1b}}}}] at @s run function demonslayer:breathing/nichirin
execute if entity @s[predicate=demonslayer:breathing/water,predicate=!demonslayer:breathing/sun,predicate=!demonslayer:breathing/tanjiro] at @s run function demonslayer:breathing/water
execute if entity @s[scores={stat_control=6..},predicate=demonslayer:breathing/sun,predicate=!demonslayer:breathing/tanjiro] at @s run function demonslayer:breathing/sun
execute if entity @s[scores={stat_control=6..},predicate=demonslayer:breathing/insect] at @s run function demonslayer:breathing/insect
execute if entity @s[scores={stat_control=5..}] if data entity @s SelectedItem.tag.Cap.Thunderbreathing at @s run function demonslayer:breathing/thunder
execute if entity @s[scores={stat_control=6..},predicate=demonslayer:breathing/tanjiro] at @s run function demonslayer:breathing/tanjiro

execute if entity @s[nbt={SelectedItem:{tag:{Cap:{Bamboo:1b}}}}] at @s run function demonslayer:breathing/bamboo/main

execute if entity @s[tag=health_see] at @s run function demonslayer:health_watch
execute if score @s demonslayer_mark matches 1.. unless score @s mark_time matches 1.. at @s run function demonslayer:breathing/nichirin/mark/init
execute if score @s mark_time matches 1.. if score @s ds_cooldown matches 3.. run scoreboard players remove @s ds_cooldown 3
execute if score @s mark_time matches 1.. run scoreboard players set @s[scores={stat_power=12..}] stat_power 16
execute if score @s mark_time matches 1 run effect give @s instant_damage 1 3 true
execute if score @s mark_time matches 1 run scoreboard players set @s ds_cooldown 100
execute if score @s mark_time matches 1 run scoreboard players remove @s stamina 150


execute if entity @s[scores={ds_finalselection=1..7},predicate=!demonslayer:in_selection] run function demonslayer:final_selection/death

execute as @s[scores={stat_power=13..}] run scoreboard players remove @s stat_power 1
execute as @s if predicate core:dmg run function demonslayer:dmg_reduction

scoreboard players add @s ds_formtime 0
scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players remove @s[scores={mark_time=1..}] mark_time 1
scoreboard players set @s[scores={demonslayer_mark=1..}] demonslayer_mark 0
scoreboard players add @s ds_backstep 0
scoreboard players remove @s[scores={ds_backstep=1..}] ds_backstep 1
scoreboard players add @s ds_lhit 0
scoreboard players remove @s[scores={ds_lhit=1..}] ds_lhit 1
scoreboard players add @s ds_cooldown 0
scoreboard players remove @s[scores={ds_cooldown=1..}] ds_cooldown 1
scoreboard players add @s ds_ghostswordc 0
scoreboard players remove @s[scores={ds_ghostswordc=1..}] ds_ghostswordc 1
scoreboard players remove @s[scores={ds_finals_cool=1..}] ds_finals_cool 1
execute as @s if score @s ds_finals_cool matches 1 run function demonslayer:give_invitation
 