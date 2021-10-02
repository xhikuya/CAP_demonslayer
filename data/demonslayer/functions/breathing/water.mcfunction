execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{WaterBreathing:1b}

execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=5..}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=4..,stat_control=12..14}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=2..,stat_control=5..7}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=3..,stat_control=8..11}] ds_waterform 1

execute if score @s[scores={ds_swap=6..}] ds_waterform matches 1 run tellraw @s "Water Surface Slash"
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 2 run tellraw @s "Water Wheel"
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 3 run tellraw @s "Flowing Dance"
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 4 run tellraw @s "Blessed rain"

execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#>actual moves
execute if predicate core:atked run function demonslayer:breathing/water/slash
execute if predicate core:click if score @s[scores={stamina=..10,ds_cooldown=0}] ds_waterform matches 1 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=11..,ds_cooldown=0}] ds_waterform matches 1 run function demonslayer:breathing/water/surface_slash

execute if predicate core:click if score @s[scores={stamina=..14,ds_cooldown=0}] ds_waterform matches 2 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=15..,ds_cooldown=0}] ds_waterform matches 2 run function demonslayer:breathing/water/water_wheel

execute if predicate core:click if score @s[scores={stamina=..14,ds_cooldown=0}] ds_waterform matches 3 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=15..,ds_cooldown=0},predicate=!demonslayer:firebreathing] ds_waterform matches 3 run function demonslayer:breathing/water/third_form1

execute if predicate core:click if score @s[scores={stamina=..19,ds_cooldown=0}] ds_waterform matches 4 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=0},predicate=!demonslayer:firebreathing] ds_waterform matches 4 run function demonslayer:breathing/water/5th/init
#> yes
execute if score @s[scores={ds_waterform=1}] ds_formtime matches 5.. run function demonslayer:breathing/water/surface_slash
execute if score @s[scores={ds_waterform=3}] ds_formtime matches 5.. run function demonslayer:breathing/water/third_form
execute if score @s[scores={ds_waterform=4}] ds_formtime matches 5.. run function demonslayer:breathing/water/5th/main



