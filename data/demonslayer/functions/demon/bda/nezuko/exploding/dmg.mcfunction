function demonslayer:demon/bda/nezuko/dmg

particle explosion ~ ~ ~ 0 0 0 0 10 normal
particle dust 1 0 0 2 ~ ~ ~ 0.6 0.6 0.6 0 150 normal
particle dust 0.953 0.349 0.482 2 ~ ~ ~ 0.6 0.6 0.6 0 150 normal
particle flame ~ ~ ~ 0.1 0.1 0.1 0.14 20 normal

playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
playsound entity.generic.explode player @a ~ ~ ~ 1 1
tag @s add immune
execute rotated ~ 0 positioned ~-1 ~-1 ~-1 as @e[dx=2,dz=2,dy=2,tag=!immune] if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune