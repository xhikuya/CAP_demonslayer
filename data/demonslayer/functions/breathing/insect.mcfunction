execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{InsectBreathing:1b,CustomModelData:1}

execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_insectform 1
scoreboard players set @s[scores={ds_insectform=4..}] ds_insectform 1
scoreboard players set @s[scores={ds_insectform=2..,stat_control=5..9}] ds_insectform 1
scoreboard players set @s[scores={ds_insectform=3..,stat_control=10..13}] ds_insectform 1
#scoreboard players set @s[scores={ds_insectform=4..,stat_control=11..12}] ds_insectform 1

execute if score @s[scores={ds_swap=6..}] ds_insectform matches 1 run tellraw @s {"text": "Butterfly Dance: Caprice","color": "light_purple"}
execute if score @s[scores={ds_swap=6..}] ds_insectform matches 2 run tellraw @s {"text": "Bee Dance: True Flutter","color": "light_purple"}
execute if score @s[scores={ds_swap=6..}] ds_insectform matches 3 run tellraw @s {"text": "Dragonfly Dance: Compound Eye Hexagon","color": "light_purple"}
execute if score @s[scores={ds_swap=6..}] ds_insectform matches 4 run tellraw @s {"text": "Centipede Dance: Hundred-Leg Zigzag","color": "light_purple"}

execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#>actual moves

execute if predicate core:atked run function demonslayer:breathing/insect/stab

execute if predicate core:click if score @s[scores={stamina=..11,ds_cooldown=0,ds_formtime=0}] ds_insectform matches 1 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=12..,ds_cooldown=0,ds_formtime=0}] ds_insectform matches 1 run function demonslayer:breathing/insect/caprice/init

execute if predicate core:click if score @s[scores={stamina=..15,ds_cooldown=0,ds_formtime=0}] ds_insectform matches 2 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=16..,ds_cooldown=0,ds_formtime=0}] ds_insectform matches 2 run function demonslayer:breathing/insect/flutter/init

execute if predicate core:click if score @s[scores={stamina=..13,ds_cooldown=0,ds_formtime=0}] ds_insectform matches 3 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=14..,ds_cooldown=0,ds_formtime=0}] ds_insectform matches 3 run function demonslayer:breathing/insect/compound/init

#>Ongoing
execute if score @s ds_formtime matches 1.. if score @s ds_insectform matches 1 run function demonslayer:breathing/insect/caprice/tick
execute if score @s ds_formtime matches 1.. if score @s ds_insectform matches 2 run function demonslayer:breathing/insect/flutter/tick
execute if score @s ds_formtime matches 1.. if score @s ds_insectform matches 3 run function demonslayer:breathing/insect/compound/tick