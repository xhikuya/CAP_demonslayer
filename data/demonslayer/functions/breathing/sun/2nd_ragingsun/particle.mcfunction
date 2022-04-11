
particle dust 1 0.333 0.067 1.6 ^ ^1.2 ^2 0.1 0.1 0.1 0.02 10 normal
particle flame ^ ^1.2 ^2.5 0.1 0.1 0.1 0.04 10 normal
particle firework ^ ^1.2 ^3 0.1 0.1 0.1 0.02 10 normal

function demonslayer:breathing/sun/dmg
tag @s add immune
execute rotated ~ 0 positioned ^ ^1.2 ^2 positioned ~-.6 ~-.5 ~-.6 as @e[dx=1.2,dz=1.2,dy=1,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune