execute as @e[predicate=demonslayer:demon,distance=..30,limit=1,sort=nearest] run function demonslayer:ai/tanjiro/snowball
scoreboard players operation @s ds_ait = @e[predicate=demonslayer:demon,distance=..40,limit=1,sort=nearest] uuid
execute if entity @e[predicate=demonslayer:demon,distance=..30] run tag @s add hit
execute if entity @e[predicate=demonslayer:demon,distance=..30] run attribute @s generic.follow_range base set 30
