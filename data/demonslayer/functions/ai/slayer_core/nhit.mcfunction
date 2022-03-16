
execute if entity @a[distance=..10,predicate=core:atked_full] run scoreboard players operation @s ds_ait = @a[distance=..10,predicate=core:atked_full] uuid
execute unless entity @a[distance=..10,predicate=core:atked_full] run scoreboard players operation @s ds_ait = @a[distance=..10,scores={ds_formtime=1..}] uuid
execute unless score @s ds_ait matches 0 run attribute @s generic.follow_range base set 30
execute unless score @s ds_ait matches 0 run tag @s add hit
