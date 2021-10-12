
particle cloud ^ ^ ^ 0.1 0.1 0.1 0 35 normal
particle dripping_water ^ ^ ^ 0.1 0.1 0.1 0.2 35 normal

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
function demonslayer:breathing/water/damage
tag @s add immune
execute rotated ~ 0 positioned ~-.5 ~-3 ~-.5 as @e[dx=1,dz=1,dy=6,tag=!immune] if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
