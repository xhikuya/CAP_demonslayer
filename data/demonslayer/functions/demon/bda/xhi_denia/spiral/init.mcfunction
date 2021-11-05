tag @e remove ds_new
execute anchored eyes positioned ^ ^ ^2 run summon area_effect_cloud ~ ~ ~ {Tags:["ds_denia_spiral","pojectile","ds_new","ds_proj"],Duration:1000000}
execute store result score @e[tag=ds_new] projowner run scoreboard players get @s uuid
data modify entity @e[tag=ds_new,limit=1] Rotation[0] set from entity @s Rotation[0]