forceload add 0 0
kill @e[tag=temp.motion]
execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.4 ^-.7 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos