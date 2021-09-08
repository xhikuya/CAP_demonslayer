function demonslayer:breathing/water/slash
function demonslayer:ai/tanjiro/breathing/damage
tag @s add immune
execute at @s rotated ~-50 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~-40 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~-30 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~-20 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~-10 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~ 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~10 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~20 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~30 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~40 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
execute at @s rotated ~50 0 positioned ^ ^ ^2 run scoreboard players operation @e[tag=!immune,scores={dmg=0},distance=..2.5] dmg = #ds:temp var1
tag @s remove immune
scoreboard players add @s ds_cooldown 100
scoreboard players set @s ds_formtime 0
scoreboard players add @s var3 50
scoreboard players remove @s var2 24
