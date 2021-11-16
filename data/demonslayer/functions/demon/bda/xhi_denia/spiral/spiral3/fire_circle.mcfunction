tag @e remove ds_new
execute run summon area_effect_cloud ^ ^ ^0.5 {Tags:["ds_denia_spiral3","pojectile","ds_new","ds_proj"],Duration:1000000}

scoreboard players operation @e[tag=ds_new] var2 = @s var2
execute store result score @e[tag=ds_new] projowner run scoreboard players get @s projowner
data modify entity @e[tag=ds_new,limit=1] Rotation set from entity @s Rotation

execute as @e if score @s uuid = @e[tag=ds_new,limit=1] projowner run tp @s ^ ^ ^0.5
execute as @e if score @s uuid = @e[tag=ds_new,limit=1] projowner run attribute @s generic.movement_speed modifier remove 42ceeca4-78f8-40d6-9f66-a7115920339a