particle flame ~ ~ ~ 0.1 0.1 0.1 0 20 normal

function demonslayer:breathing/sun/dmg
tag @s add ds_this
tag @s add immune
execute positioned ~-0.6 ~-0.5 ~-0.6 run scoreboard players operation @e[dx=1.2,dy=1,dz=1.2,tag=!immune] dmg = #ds:temp var1
execute positioned ~-0.6 ~-0.5 ~-0.6 as @e[dx=1.2,dy=1,dz=1.2,tag=!immune,type=player] run function demonslayer:breathing/sun/thrust/knockback_player
execute positioned ~-0.6 ~-0.5 ~-0.6 as @e[dx=1.2,dy=1,dz=1.2,tag=!immune,type=!player,type=!#core:non_living] run function demonslayer:breathing/sun/thrust/knockback

tag @s remove ds_this
tag @s remove immune