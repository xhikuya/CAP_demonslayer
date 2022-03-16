#var1 - time between moves
#var2 - stamina
#var3 - stamina cool
tag @s add ds_this
execute unless score @s ds_ait matches 0 run function demonslayer:ai/target_check

scoreboard players add @s ds_cooldown 0
scoreboard players add @s var2 0
scoreboard players add @s var3 0
scoreboard players add @s var4 1

scoreboard players add @s ds_ait 0

scoreboard players add @s[scores={ds_cooldown=0}] var1 1

scoreboard players add @s[scores={var2=..99,var3=0}] var2 1
scoreboard players remove @s[scores={var3=1..}] var3 1

scoreboard players set @s[scores={ds_var2=0}] var1 0 
execute if entity @s[scores={var1=10..},tag=hit] if entity @a[distance=..30] rotated ~ 0 run particle cloud ^ ^1.5 ^0.1



effect give @s[scores={ds_var2=0}] weakness 10 2 true
effect give @s[scores={ds_var2=0}] slowness 10 2 true

scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players remove @s[scores={ds_cooldown=1..}] ds_cooldown 1
#tag @s add cdamage
#execute if entity @s[predicate=core:dmg] run function demonslayer:ai/tanjiro/dmg_reduction
execute unless entity @e[tag=ds_target,distance=..20] run function demonslayer:ai/reset_target_slayer
execute if entity @s[scores={ds_ait=0,var4=40}] if entity @e[distance=..30,predicate=demonslayer:demon] run function demonslayer:ai/find_target_slayer
execute if entity @s[nbt={HurtTime:10s},scores={ds_ait=0}] run function demonslayer:ai/nhit_slayer
execute if block ~ ~0.5 ~ water run tp @s ~ ~0.01 ~
scoreboard players set @s[scores={var4=41..}] var4 0 



tag @s remove ds_this
tag @e[tag=ds_target] remove ds_target