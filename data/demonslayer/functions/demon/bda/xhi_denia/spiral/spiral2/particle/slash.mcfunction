particle flame ~ ~ ~ 0.1 0.1 0.1 0 10 normal
particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 10 normal
particle sweep_attack ~ ~ ~ 0 0 0 0 3 normal

tag @s add proj
tag @e remove immune
execute as @e if score @s uuid = @e[tag=proj,limit=1] projowner run tag @s add immune
execute positioned ~1 ~2 ~1 run scoreboard players operation @e[nbt={HurtTime:0s},dx=-2,dz=-2,dy=-4,tag=!immune] dmg = @s var2
tag @e remove immune
tag @s add proj
execute unless entity @e[tag=death_message] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: 5, WaitTime: -2147483648, Tags: ["death_message"]}
data merge entity @e[tag=death_message,limit=1] {CustomName:'{"text": "died to a blood demon art","color": "white"}'}
