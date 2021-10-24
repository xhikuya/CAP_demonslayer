
particle cloud ^ ^ ^ 0.1 0.1 0.1 0 35 normal
particle dripping_water ^ ^ ^ 0.1 0.1 0.1 0.2 35 normal

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
function demonslayer:ai/tanjiro/breathing/damage
tag @s add immune
execute rotated ~ 0 positioned ~-1 ~-1 ~-1 as @e[dx=2,dz=2,dy=2,tag=!immune] if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune