tag @e remove ds_new
execute in demonslayer:final_selection run tp @s ~ ~ ~
tag @s add final_mark
schedule function demonslayer:final_selection/mark_schedule 40t replace
tellraw @s {"text": "You have entered final selection"}
item replace entity @s weapon.mainhand with air
scoreboard players add @s ds_finalselection 0