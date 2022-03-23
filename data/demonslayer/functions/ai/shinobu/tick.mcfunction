#var1 - time between moves
#var2 - stamina
#var3 - stamina cool
tag @s add ds_this
execute unless score @s ds_ait matches 0 run function demonslayer:ai/target_check
function demonslayer:ai/slayer_core/scores

scoreboard players add @s[scores={var2=..140,var3=0}] var2 1

scoreboard players set @s[scores={ds_var2=0}] var1 0 
execute if entity @s[scores={var1=10..},tag=hit] if entity @a[distance=..30] rotated ~ 0 run particle cloud ^ ^1.5 ^0.1
execute if entity @s[scores={var1=20..},tag=hit] run function demonslayer:ai/shinobu/choose_move
execute if entity @s[scores={var1=1},tag=hit] positioned ^ ^ ^1.4 positioned ~2 ~2 ~2 if entity @e[tag=ds_target,dx=-4,dy=-4,dz=-4] at @s run function demonslayer:ai/shinobu/sting
execute if entity @s[scores={var1=15},tag=hit] positioned ^ ^ ^1.4 positioned ~2 ~2 ~2 if entity @e[tag=ds_target,dx=-4,dy=-4,dz=-4] at @s run function demonslayer:ai/shinobu/sting

execute as @s[scores={ds_insectform=1,ds_formtime=4..}] at @s run function demonslayer:ai/shinobu/breathing/caprice/tick
execute as @s[scores={ds_insectform=2,ds_formtime=1..}] at @s run function demonslayer:ai/shinobu/breathing/flut/tick
execute as @s[scores={ds_insectform=3,ds_formtime=1..}] at @s facing entity @e[tag=ds_target,limit=1] eyes run function demonslayer:ai/shinobu/breathing/compound/tick

#tag @s add cdamage
#execute if entity @s[predicate=core:dmg] run function demonslayer:ai/tanjiro/dmg_reduction
execute unless entity @e[tag=ds_target,distance=..20] run function demonslayer:ai/slayer_core/reset_target
execute if entity @s[scores={ds_ait=0,var4=80}] if entity @e[distance=..30,predicate=demonslayer:demon] run function demonslayer:ai/slayer_core/find_target
execute if entity @s[nbt={HurtTime:10s},scores={ds_ait=0}] run function demonslayer:ai/slayer_core/nhit
execute if block ~ ~0.5 ~ water run tp @s ~ ~0.01 ~
scoreboard players set @s[scores={var4=81..}] var4 0 

tag @s add cdamage
execute if predicate core:dmg run function demonslayer:ai/shinobu/damage_reduce

tag @s remove ds_this
tag @e[tag=ds_target] remove ds_target