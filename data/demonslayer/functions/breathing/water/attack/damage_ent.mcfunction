function demonslayer:breathing/water/dmg_m1

execute store result score @s uuid run data get entity @s UUID[0]
execute rotated ~ 0 run summon area_effect_cloud ~ ~ ~ {Duration:10,Radius:0,RadiusPerTick:0,Tags:["ds_slash","ds_proj","ds_slew"]}
execute store result score @e[tag=ds_slew] var2 run scoreboard players get #ds:temp var1
execute store result score @e[tag=ds_slew] projowner run scoreboard players get @s uuid
tag @e[tag=ds_slew] remove ds_slew