forceload add 0 0
kill @e[tag=temp.motion]
execute at @s facing entity @e[tag=ds_this,limit=1] feet rotated ~ 0 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.3 ^-3 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos