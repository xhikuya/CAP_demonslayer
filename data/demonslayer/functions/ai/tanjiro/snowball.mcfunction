
execute store result score @e[tag=ds_this,limit=1] uuid run data get entity @e[tag=ds_this,limit=1] UUID[0]
execute at @s run summon minecraft:snowball ~ ~2.251 ~ {Tags:["ds_news"]}
data modify entity @e[tag=ds_news,limit=1] Owner set from entity @e[tag=ds_this,limit=1] UUID
tag @e remove ds_news

execute store result score @s uuid run data get entity @s UUID[0]
summon minecraft:snowball ~ ~2.251 ~ {Tags:["ds_news"]}
data modify entity @e[tag=ds_news,limit=1] Owner set from entity @s UUID
tag @e remove ds_news