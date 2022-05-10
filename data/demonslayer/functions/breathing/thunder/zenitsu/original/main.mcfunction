effect give @s[scores={ds_formtime=6..}] slowness 1 255 true
execute at @s[scores={ds_formtime=6..}] positioned ~ ~1.4 ~ positioned ^ ^ ^.4 run particle dust 1 1 1 2 ~ ~ ~ 0.02 0.02 0.02 0.1 1 normal
execute if score @s[nbt={OnGround:0b}] ds_formtime matches 6.. at @s unless block ~ ~-1 ~ #airs run effect give @s slow_falling 1 2 true

execute if entity @s[nbt={OnGround:0b}] run scoreboard players set @s[scores={ds_formtime=6..7}] ds_formtime 7
execute if score @s ds_formtime matches 1..5 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
