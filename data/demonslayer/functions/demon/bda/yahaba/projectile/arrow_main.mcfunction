tag @e[tag=ds_this] remove ds_this
tag @s add ds_this
execute at @s unless entity @s[scores={var4=2,var3=1..}] unless entity @s[scores={var4=2,var3=..-1}] run tp @s ^ ^ ^0.2
execute unless block ^ ^ ^0.2 #airs run kill @s
execute at @s unless entity @s[scores={var4=2,var3=1..}] unless entity @s[scores={var4=2,var3=..-1}] run tp @s ^ ^ ^0.2
execute unless block ^ ^ ^0.2 #airs run kill @s
#execute at @s run tp @s ^ ^ ^0.3
#execute unless block ^ ^ ^0.4 #airs run kill @s
execute if entity @s[tag=!proj_hit] positioned ~-.5 ~-0.3 ~-.5 as @e[dx=1,dz=1,dy=.6,tag=!projectile] run tag @s add hit_check



particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 10 normal
execute positioned ~-.5 ~-0.3 ~-.5 as @e[dx=1,dz=1,dy=0.6,tag=hit_check] run function demonslayer:demon/bda/yahaba/projectile/check
execute unless score @s[tag=proj_hit] var3 matches 0 run function demonslayer:demon/bda/yahaba/projectile/arrow_tp

scoreboard players add @s var1 1

#execute unless score @s[tag=proj_hit,scores={var1=60..,var4=1}] var3 matches 0 run kill @s
#execute unless score @s[tag=proj_hit,scores={var1=80..,var4=2}] var3 matches 0 run kill @s
kill @s[scores={var1=60..}]