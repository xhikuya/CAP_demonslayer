scoreboard players add @s[scores={ds_formtime=0}] ds_cooldown 40
scoreboard players add @s[scores={ds_formtime=0,stamina=..13}] stamina_cool 150
scoreboard players add @s[scores={ds_formtime=0,stamina=14..}] stamina_cool 40
scoreboard players remove @s[scores={ds_formtime=0}] stamina 13

scoreboard players set @s[scores={ds_formtime=0}] ds_formtime 10
execute as @s at @s rotated ~ 0 if block ^ ^.1 ^.1 #movable run tp @s ^ ^ ^0.2
execute as @s at @s rotated ~ 0 if block ^ ^.1 ^.1 #movable run tp @s ^ ^ ^0.2
execute as @s at @s rotated ~ 0 if block ^ ^.1 ^.1 #movable run tp @s ^ ^ ^0.2
execute as @s at @s rotated ~ 0 if block ^ ^.1 ^.1 #movable run tp @s ^ ^ ^0.2





execute as @s if score @s ds_formtime matches 5 at @s run function demonslayer:breathing/water/slash
execute as @s if score @s ds_formtime matches 5 at @s run function demonslayer:breathing/water/surface_slash2
execute if score @s ds_formtime matches 5.. at @s positioned ^ ^ ^2 if entity @e[dx=2,dz=2,dy=2] at @s run function demonslayer:breathing/water/slash
execute if score @s ds_formtime matches 5.. at @s positioned ^ ^ ^2 if entity @e[dx=2,dz=2,dy=2] at @s run function demonslayer:breathing/water/surface_slash2
execute if score @s ds_formtime matches 5.. at @s positioned ^ ^ ^2 if entity @e[dx=2,dz=2,dy=2] at @s run scoreboard players set @s ds_formtime 6
