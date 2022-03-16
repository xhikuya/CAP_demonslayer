execute store result score @s uuid run data get entity @s UUID[0]
summon minecraft:snowball ~ ~2.251 ~ {Tags:["ds_news"]}
data modify entity @e[tag=ds_news,limit=1] Owner set from entity @s UUID
tag @e remove ds_news