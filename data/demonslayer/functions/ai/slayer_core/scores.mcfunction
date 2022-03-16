#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

scoreboard players add @s ds_cooldown 0
scoreboard players add @s var2 0
scoreboard players add @s var3 0
scoreboard players add @s var4 1
scoreboard players add @s ds_ait 0
scoreboard players add @s[scores={ds_cooldown=0}] var1 1
scoreboard players remove @s[scores={var3=1..}] var3 1
scoreboard players set @s[scores={ds_var2=0}] var1 0 
effect give @s[scores={ds_var2=0}] weakness 10 2 true
effect give @s[scores={ds_var2=0}] slowness 10 2 true
scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players remove @s[scores={ds_cooldown=1..}] ds_cooldown 1

