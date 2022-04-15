execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_bdamove 1
scoreboard players set @s[scores={ds_bdamove=10..}] ds_bdamove 1

execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 1 run tellraw @s {"text": "Compass Needle","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 2 run tellraw @s {"text": "Air Type","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 3 run tellraw @s {"text": "Disorder","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 4 run tellraw @s {"text": "Annihilation Type","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 5 run tellraw @s {"text": "Leg Type: Crown Splitter","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 6 run tellraw @s {"text": "Leg Type: Explosive Flurry","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 7 run tellraw @s {"text": "Eight-Layered Demon Core","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 8 run tellraw @s {"text": "Crushing Type: Ten Thousand Leaves Flashing Willow","color": "dark_aqua"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 9 run tellraw @s {"text": "Leg Type: Flying Planet Thousand Wheels","color": "dark_aqua"}


execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#> Actual moves
execute if predicate core:atked run function demonslayer:dedcmon/bda/compass/atk
