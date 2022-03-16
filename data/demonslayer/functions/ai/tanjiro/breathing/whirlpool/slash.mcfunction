
particle cloud ^ ^ ^ 0.1 0.1 0.1 0 35 normal
particle dripping_water ^ ^ ^ 0.1 0.1 0.1 0.2 35 normal

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
function demonslayer:ai/tanjiro/breathing/damage
tag @s add immune
execute positioned ~-2.4 ~-1.5 ~-2.4 as @e[dx=4.8,dz=4.8,dy=3,tag=!immune] if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune