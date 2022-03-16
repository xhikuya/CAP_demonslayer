forceload add 0 0
kill @e[tag=temp.motion]
execute facing entity @e[tag=ds_target,limit=1] feet positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.5 ^2 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos
