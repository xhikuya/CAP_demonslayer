forceload add 0 0
kill @e[tag=temp.motion]
execute facing entity @e[tag=ds_target] feet rotated ~ 0 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.1 ^3 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos
scoreboard players set @s ds_waterform 1
scoreboard players set @s ds_formtime 10

