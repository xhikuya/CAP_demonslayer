forceload add 0 0
kill @e[tag=temp.motion]
tp @s ~ ~1 ~
execute at @s facing entity @p feet rotated ~ 0 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.1 ^5 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos
scoreboard players set @s ds_waterform 3
scoreboard players set @s ds_formtime 20

particle angry_villager ~ ~5 ~ 1 1 1 0.1 1000 normal