#var1 - time between moves
#var2 - stamina
#var3 - stamina cool
#say gi
scoreboard players add @s var1 1
scoreboard players add @s var2 0

scoreboard players add @s ds_cooldown 0
scoreboard players remove @s[scores={var2=1..}] var2 1
scoreboard players remove @s[scores={ds_cooldown=1..}] ds_cooldown 1
scoreboard players add @s ds_lhit 0
scoreboard players remove @s[scores={ds_lhit=1..}] ds_lhit 1
tag @s add ds_this

execute as @e[distance=..10,tag=ds_slash] if score @s projowner = @e[tag=ds_this,limit=1,sort=nearest] uuid run tag @s add ds_owned

execute if score @s var2 matches 0 positioned ^ ^ ^1 positioned ~1 ~1 ~1 if entity @e[distance=..2,tag=ds_slash,tag=!ds_owned] run function demonslayer:ai/training/parry
execute if score @s var2 matches 0 if entity @e[distance=..2,tag=ds_slash,tag=!ds_owned] run function demonslayer:ai/training/parry

execute at @s[nbt=!{OnGround:0b}] run tp @s ~ ~ ~ facing entity @p feet
#execute as @s[scores={var1=7,ds_cooldown=0}] at @s positioned ^ ^ ^1.5 positioned ~1 ~1 ~1 if entity @e[dx=-2,dy=-2,dz=-2,tag=!ds_this] run function demonslayer:ai/training/attack
#execute as @s[scores={var1=9}] run say now

execute as @s[scores={var1=9,ds_cooldown=0}] at @s positioned ^ ^ ^2.2 positioned ~1.5 ~1.5 ~1.5 if entity @e[dx=-3,dy=-3,dz=-3,tag=!ds_this] run function demonslayer:ai/training/attack

tag @s remove ds_this
execute if score @s var1 matches 9.. run scoreboard players set @s var1 0

tag @e remove ds_owned

execute if predicate core:dmg run function demonslayer:ai/training/dmg_reduc