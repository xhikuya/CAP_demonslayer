particle flame ^ ^ ^ 0.1 0.1 0.1 0 10 normal
particle dust 1 0.333 0.067 2 ^ ^ ^ 0.1 0.1 0.1 0 10 normal
particle firework ^ ^ ^ 0.1 0.1 0.1 0 10 normal

function demonslayer:breathing/fire/dmg
tag @s add immune
execute rotated ~ 0 positioned ~-.4 ~-.5 ~-.4 as @e[dx=.8,dz=.8,dy=1,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune