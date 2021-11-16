tag @e remove ds_new
execute run summon area_effect_cloud ~ ~ ~ {Tags:["ds_denia_spiral2","pojectile","ds_new","ds_proj"],Duration:1000000}

scoreboard players operation @e[tag=ds_new] var2 = @s var2
execute store result score @e[tag=ds_new] projowner run scoreboard players get @s projowner
data modify entity @e[tag=ds_new,limit=1] Rotation set from entity @s Rotation
