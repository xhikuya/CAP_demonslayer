tag @e[tag=ds_this] remove ds_this
tag @s add ds_this
execute at @s run tp @s ^ ^ ^0.3
execute unless block ^ ^ ^0.4 #airs run kill @s
execute at @s run tp @s ^ ^ ^0.3
execute unless block ^ ^ ^0.4 #airs run kill @s
execute at @s run tp @s ^ ^ ^0.3
execute unless block ^ ^ ^0.4 #airs run kill @s
execute if entity @s[tag=!proj_hit] positioned ~-1 ~-0.3 ~-1 as @e[dx=2,dz=2,dy=1,tag=!projectile] run tag @s add hit_check



particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 10 normal
execute as @e[tag=hit_check] run function demonslayer:demon/bda/yahaba/projectile/check
execute unless score @s[tag=proj_hit] var3 matches 0 run function demonslayer:demon/bda/yahaba/projectile/arrow_tp

scoreboard players add @s var1 1

kill @s[scores={var1=60..}]