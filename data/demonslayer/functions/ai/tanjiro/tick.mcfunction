#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

scoreboard players add @s ds_cooldown 0
scoreboard players add @s var2 0
scoreboard players add @s var3 0

scoreboard players add @s[scores={ds_cooldown=0}] var1 1
scoreboard players add @s[scores={var2=..99,var3=0}] var2 1
scoreboard players remove @s[scores={var3=1..}] var3 1

scoreboard players set @s[scores={ds_var2=0}] var1 0 

execute if entity @s[scores={var1=10..}] if entity @a[distance=..30] rotated ~ 0 run particle cloud ^ ^1.5 ^0.1
execute if entity @s[scores={var1=20..}] run function demonslayer:ai/tanjiro/choose_move
execute as @s[scores={ds_waterform=1,ds_formtime=2..}] at @s rotated ~ 0 positioned ^ ^ ^2 if entity @e[distance=..2,tag=!ds_slayer] run function demonslayer:ai/tanjiro/breathing/surface_slash
execute as @s[scores={ds_waterform=1,ds_formtime=1}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/surface_slash

execute as @s[scores={ds_waterform=2,ds_formtime=2}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/wheel_2
execute as @s[scores={ds_waterform=6,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/whirlpool/main

effect give @s[scores={ds_var2=0}] weakness 10 2 true
effect give @s[scores={ds_var2=0}] slowness 10 2 true

scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players remove @s[scores={ds_cooldown=1..}] ds_cooldown 1

execute if block ~ ~0.5 ~ water run tp @s ~ ~0.01 ~