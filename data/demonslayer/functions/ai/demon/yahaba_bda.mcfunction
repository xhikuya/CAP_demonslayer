#var1 - time between moves
#var2 - stamina
#var3 - stamina cool

execute if entity @s[tag=ds_um] run scoreboard players set @s stat_power 5
execute if entity @s[tag=ds_um1] run scoreboard players set @s stat_power 8
scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players add @s var1 1
scoreboard players add @s var3 0

execute if entity @s[tag=!ds_um,tag=!ds_um1] run scoreboard players add @s[scores={var2=..99,var3=0}] var2 1
execute if entity @s[tag=ds_um] run scoreboard players add @s[scores={var2=..149,var3=0}] var2 1
execute if entity @s[tag=ds_um1] run scoreboard players add @s[scores={var2=..199,var3=0}] var2 2
scoreboard players remove @s[scores={var3=1..}] var3 1

scoreboard players set @s[scores={ds_var2=0}] var1 0 
execute if score @s ds_bdamove matches 3 if score @s ds_formtime matches 1.. run function demonslayer:demon/bda/yahaba/barrage
execute unless score @s ds_formtime matches 1.. if score @s var1 matches 100.. if entity @p[distance=2..30] run function demonslayer:ai/demon/yahaba_choose
execute if score @s var1 matches 100.. run scoreboard players set @s var1 0