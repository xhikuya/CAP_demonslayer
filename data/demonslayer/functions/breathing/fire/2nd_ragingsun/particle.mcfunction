particle flame ^ ^ ^2.4 0.1 0.1 0.1 0 10 normal
particle dust 1 0.333 0.067 2.3 ^ ^ ^2.4 0.1 0.1 0.1 0 10 normal
particle firework ^ ^ ^2.4 0.1 0.1 0.1 0 10 normal

function demonslayer:breathing/fire/damage
tag @s add immune
execute rotated ~ 0 positioned ~-.3 ~-.5 ~-.3 as @e[dx=.6,dz=.6,dy=1,tag=!immune] if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
