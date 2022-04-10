#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

execute at @s if predicate demonslayer:skylight unless predicate demonslayer:time_check unless predicate demonslayer:raining unless predicate demonslayer:end run function demonslayer:demon/sun
execute at @s if block ~ ~ ~ lilac run scoreboard players add @s ds_wisteria 1
scoreboard players set @s[scores={ds_wisteria=0}] ds_wist_tick 0
execute at @s[scores={ds_wist_tick=0}] if block ~ ~ ~ lilac run scoreboard players add @s ds_wist_tick 10
execute as @s[scores={ds_wisteria=1..}] at @s run function demonslayer:demon/wisteria

execute unless score @s ds_wist_tick matches 1.. run scoreboard players add @s var6 1
execute if score @s var6 matches 40.. run effect give @s instant_damage 1 0 true
execute if score @s var6 matches 40.. run scoreboard players set @s var6 0

tag @s add ds_this
execute unless score @s ds_ait matches 0 run function demonslayer:ai/target_check
execute if score @s[tag=ds_mark] ds_cooldown matches 1.. run scoreboard players remove @s ds_cooldown 1
execute if score @s[tag=ds_mark] ds_cooldown matches 1.. run scoreboard players remove @s ds_cooldown 1

function demonslayer:ai/slayer_core/scores
scoreboard players add @s[scores={var2=..99,var3=0}] var2 1


execute if entity @s[scores={var1=10..},tag=hit] if entity @a[distance=..30] rotated ~ 0 run particle cloud ^ ^1.5 ^0.1
execute if entity @s[scores={var1=20..},tag=hit] run function demonslayer:ai/kaigaku/choose_move
execute as @s[scores={ds_thunderform=1,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/second_form/main
execute as @s[scores={ds_thunderform=3,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/third_form/main
execute as @s[scores={ds_thunderform=5,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/fifth_form/main
attribute @s[scores={ds_formtime=0}] generic.movement_speed modifier remove b607e8d0-bd75-4930-9475-17f935eeb919

#execute as @s[scores={ds_waterform=1,ds_formtime=1}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/surface_slash

#execute as @s[scores={ds_waterform=2,ds_formtime=2}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/wheel_2
#execute as @s[scores={ds_waterform=6,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/whirlpool/main
#execute as @s[scores={ds_waterform=3,ds_formtime=1..}] at @s rotated ~ 0 run function demonslayer:ai/tanjiro/breathing/third/main


tag @s add cdamage
execute if entity @s[predicate=core:dmg] run function demonslayer:ai/tanjiro/dmg_reduction
execute if score @s var4 matches 80 unless entity @e[tag=ds_target,distance=..100] run function demonslayer:ai/slayer_core/reset_target
execute if entity @s[scores={ds_ait=0,var4=80}] if entity @e[distance=..30,predicate=demonslayer:human] run function demonslayer:ai/kaigaku/demon/find_target
execute if entity @s[nbt={HurtTime:10s},scores={ds_ait=0}] run function demonslayer:ai/slayer_core/nhit
execute if block ~ ~0.5 ~ water run tp @s ~ ~0.01 ~
scoreboard players set @s[scores={var4=81..}] var4 0 


tag @s remove ds_this
tag @e[tag=ds_target] remove ds_target