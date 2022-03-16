forceload add 0 0
kill @e[tag=temp.motion]
execute facing entity @e[tag=ds_target] eyes rotated ~ 0 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.1 ^3 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos
scoreboard players set @s ds_insectform 2
scoreboard players set @s ds_formtime 13
scoreboard players set @s ds_cooldown 33

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.6
particle cloud ~ ~1 ~ 0.1 0.1 0.1 1 30 normal