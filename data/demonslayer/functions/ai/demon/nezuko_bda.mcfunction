#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

execute if entity @s[tag=ds_um] run scoreboard players set @s stat_power 8
execute if entity @s[tag=ds_um1] run scoreboard players set @s stat_power 12

scoreboard players add @s var1 1
scoreboard players add @s var3 0

execute if entity @s[tag=!ds_um,tag=!ds_um1] run scoreboard players add @s[scores={var2=..99,var3=0}] var2 1
execute if entity @s[tag=ds_um] run scoreboard players add @s[scores={var2=..149,var3=0}] var2 1
execute if entity @s[tag=ds_um1] run scoreboard players add @s[scores={var2=..199,var3=0}] var2 2
scoreboard players remove @s[scores={var3=1..}] var3 1

scoreboard players set @s[scores={ds_var2=0}] var1 0 


execute if score @s[tag=!ds_um] var1 matches 60.. if entity @p[distance=2..5] facing entity @p feet run function demonslayer:demon/bda/nezuko/exploding/exploding
execute if score @s[tag=!ds_um] var1 matches 60.. run scoreboard players set @s var1 0
execute if score @s[tag=ds_um] var1 matches 30.. if entity @p[distance=2..5] facing entity @p feet run function demonslayer:demon/bda/nezuko/exploding/exploding
execute if score @s[tag=ds_um] var1 matches 30.. run scoreboard players set @s var1 0
