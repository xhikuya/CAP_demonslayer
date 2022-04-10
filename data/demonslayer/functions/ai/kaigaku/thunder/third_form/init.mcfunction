scoreboard players remove @s var2 17
scoreboard players add @s ds_formtime 10
scoreboard players add @s ds_cooldown 15
scoreboard players set @s ds_thunderform 3

forceload add 0 0
kill @e[tag=temp.motion]
execute at @s facing entity @e[tag=ds_target] feet rotated ~ 0 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.1 ^2.2 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos