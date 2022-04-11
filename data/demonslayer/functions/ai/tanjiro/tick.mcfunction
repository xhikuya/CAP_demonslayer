#var1 - time between moves
#var2 - stamina
#var3 - stamina cool
tag @s add ds_this
execute unless score @s ds_ait matches 0 run function demonslayer:ai/target_check
execute if score @s[tag=ds_mark] ds_cooldown matches 2.. run scoreboard players remove @s ds_cooldown 2

function demonslayer:ai/slayer_core/scores
scoreboard players add @s[scores={var2=..99,var3=0}] var2 1


execute if entity @s[scores={var1=10..},tag=hit] if entity @a[distance=..30] rotated ~ 0 run particle cloud ^ ^1.5 ^0.1
execute if entity @s[scores={var1=20..},tag=hit] run function demonslayer:ai/tanjiro/choose_move


execute as @s[scores={ds_waterform=1,ds_formtime=2..}] at @s rotated ~ 0 positioned ^ ^ ^2 if entity @e[distance=..2,tag=!ds_slayer] run function demonslayer:ai/tanjiro/breathing/surface_slash
execute as @s[scores={ds_waterform=1,ds_formtime=1}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/surface_slash

execute as @e[distance=..10,tag=ds_slash] if score @s projowner = @e[tag=ds_this,limit=1,sort=nearest] uuid run tag @s add ds_owned

execute if score @s[scores={ds_formtime=0}] var6 matches 1..2 if predicate demonslayer:75_chance positioned ^ ^ ^2 positioned ~1.5 ~1.5 ~1.5 if entity @e[tag=ds_slash,tag=!ds_owned,dx=-3,dy=-3,dz=-3] at @s run function demonslayer:ai/tanjiro/breathing/slice/init
execute if score @s[scores={ds_formtime=0}] var5 matches 5..6 at @s positioned ^ ^ ^1.5 positioned ~1.5 ~1.5 ~1.5 if entity @e[dx=-3,dy=-3,dz=-3,tag=ds_target] at @s run function demonslayer:ai/tanjiro/breathing/slice/init
tag @e remove ds_owned
execute as @s[scores={ds_waterform=2,ds_formtime=2}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/wheel_2
execute as @s[scores={ds_waterform=6,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/whirlpool/main
execute as @s[scores={ds_waterform=3,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/third/main
execute as @s[scores={ds_formtime=0}] at @s rotated ~ 0 run scoreboard players set @s ds_waterform 0


tag @s add cdamage
execute if entity @s[predicate=core:dmg] run function demonslayer:ai/tanjiro/dmg_reduction
execute if score @s var4 matches 80 unless entity @e[tag=ds_target,distance=..100] run function demonslayer:ai/slayer_core/reset_target
execute if entity @s[scores={ds_ait=0,var4=80}] if entity @e[distance=..30,predicate=demonslayer:demon] run function demonslayer:ai/slayer_core/find_target
execute if entity @s[nbt={HurtTime:10s},scores={ds_ait=0}] run function demonslayer:ai/slayer_core/nhit

execute if block ~ ~.8 ~ water run tag @s add bobber
execute if entity @s[tag=bobber] run function demonslayer:ai/water_swim
execute unless block ~ ~-0.1 ~ water run tag @s remove bobber

scoreboard players set @s[scores={var4=81..}] var4 0 

scoreboard players set @s[scores={var5=7..}] var5 0
scoreboard players set @s[scores={var6=6..}] var6 0

tag @s remove ds_this
tag @e[tag=ds_target] remove ds_target