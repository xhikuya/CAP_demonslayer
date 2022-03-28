#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players add @s ds_formtime 0
scoreboard players add @s var1 1
execute unless score @s var2 matches -1.. run scoreboard players set @s var2 100
scoreboard players add @s var3 0
scoreboard players remove @s[scores={ds_lhit=1..}] ds_lhit 1
execute as @e[distance=..10,tag=ds_slash] if score @s projowner = @e[tag=ds_this,limit=1,sort=nearest] uuid run tag @s add ds_owned

execute if predicate demonslayer:50_chance positioned ^ ^ ^1.4 positioned ~1.2 ~1.2 ~1.2 if entity @e[tag=ds_slash,tag=!ds_owned,dx=-2.4,dy=-2.4,dz=-2.4] run function demonslayer:ai/demon/basic_atk
execute if predicate demonslayer:50_chance if entity @e[distance=..2,tag=ds_slash,tag=!ds_owned] run function demonslayer:ai/demon/basic_atk


scoreboard players add @s[scores={var2=..99,var3=0}] var2 1
scoreboard players remove @s[scores={var3=1..}] var3 1
tag @s add ds_this
scoreboard players set @s[scores={var2=0}] var1 0 
execute if score @s[scores={var2=20..,ds_formtime=0}] var1 matches 5.. if data entity @s HandItems[1].tag{Cap:{Bda:1b,ID:4b}} at @s positioned ^ ^ ^1.8 positioned ~1 ~1 ~1 if entity @e[dx=-2,dy=-2,dz=-2,tag=!ds_this] run function demonslayer:ai/demon/basic_atk
execute if score @s[scores={var2=20..,ds_formtime=0}] var1 matches 13.. at @s positioned ^ ^ ^1.3 positioned ~1 ~1 ~1 if entity @e[dx=-2,dy=-2,dz=-2,tag=!ds_this] run function demonslayer:ai/demon/basic_atk

tag @s remove ds_this
