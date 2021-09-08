scoreboard players add @s ds_cooldown 40
scoreboard players add @s var3 80
scoreboard players remove @s var2 40
scoreboard players set @s ds_waterform 2
scoreboard players set @s ds_formtime 4

forceload add 0 0
kill @e[tag=temp.motion]
execute facing entity @p feet rotated ~ 0 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^0.4 ^1.4 {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos



