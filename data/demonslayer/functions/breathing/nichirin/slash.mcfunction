execute store result score @s uuid run data get entity @s UUID[0]
execute positioned ~ ~ ~ run summon area_effect_cloud ~ ~ ~ {Duration:10,Radius:0,RadiusPerTick:0,Tags:["ds_slash","ds_proj","ds_slew"]}
execute store result score @e[tag=ds_slew] var2 run attribute @s generic.attack_damage get 3
execute store result score @e[tag=ds_slew] projowner run scoreboard players get @s uuid
tag @e[tag=ds_slew] remove ds_slew
