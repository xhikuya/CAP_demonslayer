function demonslayer:demon/bda/basic/dmg
particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0.01 2 normal
tag @s add immune
execute rotated ~ 0 positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=3,dz=3,dy=3,tag=!immune] if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
execute rotated ~ 0 positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=3,dz=3,dy=3,predicate=core:projectile] run kill @s

tag @s remove immune
