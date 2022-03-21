#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players add @s ds_formtime 0
scoreboard players add @s var1 1
execute unless score @s var2 matches -1.. run scoreboard players set @s var2 100
scoreboard players add @s var3 0

scoreboard players add @s[scores={var2=..99,var3=0}] var2 1
scoreboard players remove @s[scores={var3=1..}] var3 1
tag @s add ds_this
scoreboard players set @s[scores={var2=0}] var1 0 
execute if score @s[scores={var2=20..,ds_formtime=0}] var1 matches 7 at @s positioned ^ ^ ^1 positioned ~1 ~1 ~1 if entity @e[dx=-2,dy=-2,dz=-2,tag=!ds_this] run function demonslayer:ai/demon/basic_atk
tag @s remove ds_this
execute if score @s var1 matches 7.. run scoreboard players set @s var1 0