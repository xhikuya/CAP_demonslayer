scoreboard players add @s ds_cooldown 50
scoreboard players set @s ds_formtime 20
scoreboard players set @s ds_insectform 1

forceload add 0 0
kill @e[tag=temp.motion]
execute at @s positioned 0.0 0 0.0 run summon area_effect_cloud ~ ~2 ~ {Tags:["temp.motion"],Duration:10000}
data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos
