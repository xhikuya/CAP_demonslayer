#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

execute if entity @s[tag=ds_um] run scoreboard players set @s stat_power 8
execute if entity @s[tag=ds_um1] run scoreboard players set @s stat_power 12

scoreboard players add @s var1 1
scoreboard players add @s var4 1

scoreboard players add @s var3 0

execute if entity @s[tag=!ds_um,tag=!ds_um1] run scoreboard players add @s[scores={var2=..99,var3=0}] var2 1
execute if entity @s[tag=ds_um] run scoreboard players add @s[scores={var2=..149,var3=0}] var2 1
execute if entity @s[tag=ds_um1] run scoreboard players add @s[scores={var2=..199,var3=0}] var2 2
scoreboard players remove @s[scores={var3=1..}] var3 1
scoreboard players set @s[scores={var3=..-1}] var3 0

scoreboard players set @s[scores={var2=..0}] var1 0 
tag @s add ds_this
execute as @e[distance=..10,tag=ds_slash] if score @s projowner = @e[tag=ds_this,limit=1,sort=nearest] uuid run tag @s add ds_owned

execute if predicate demonslayer:20_chance positioned ^ ^ ^1.4 positioned ~1.2 ~1.2 ~1.2 if entity @e[tag=ds_slash,tag=!ds_owned,dx=-2.4,dy=-2.4,dz=-2.4] at @s run function demonslayer:demon/bda/nezuko/m1/slash2
execute if predicate demonslayer:20_chance if entity @e[distance=..2,tag=ds_slash,tag=!ds_owned] at @s run function demonslayer:demon/bda/nezuko/m1/slash2

execute if score @s[scores={var2=20..,ds_formtime=0}] var4 matches 13.. at @s positioned ^ ^ ^1.7 positioned ~1 ~1 ~1 if entity @e[dx=-2,dy=-2,dz=-2,tag=!ds_this] at @s run function demonslayer:demon/bda/nezuko/m1/slash2
execute if score @s var1 matches 60.. positioned ^ ^ ^1.3 positioned ~1 ~1 ~1 if entity @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,tag=!ds_demon] if entity @p[distance=2..10] at @s positioned ^ ^ ^.6 run function demonslayer:demon/bda/nezuko/exploding/exploding
execute if score @s var1 matches 60.. run scoreboard players set @s var1 0


scoreboard players set @s[scores={var4=14..}] var4 0 
tag @e remove ds_owned
tag @s remove ds_this