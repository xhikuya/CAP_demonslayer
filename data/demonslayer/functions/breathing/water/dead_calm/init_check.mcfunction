function demonslayer:breathing/water/damage
tag @s add immune
execute positioned ~-4 ~-1 ~-4 as @e[dx=8,dy=6,dz=8,tag=!immune,tag=!projectile] at @s run function demonslayer:breathing/water/dead_calm/init_atk
tag @s remove immune