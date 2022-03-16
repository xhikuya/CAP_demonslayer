scoreboard players add @s uuid 0
execute if score @s uuid matches 0 run function core:uuid

tag @e remove ds_new
execute at @s run summon marker ~ ~ ~ {Tags:["ds_finalhome","ds_new"]}
execute at @s run scoreboard players operation @e[tag=ds_new,limit=1] uuid = @s uuid
