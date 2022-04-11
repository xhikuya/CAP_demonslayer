
particle dust 1 0.333 0.067 1.6 ^ ^1 ^2.2 0.1 0.1 0.1 0.02 10 normal
particle dust 1 0.333 0.067 1.6 ^ ^1 ^2.5 0.1 0.1 0.1 0.02 10 normal
particle dust 1 0.333 0.067 1.6 ^ ^1 ^3 0.1 0.1 0.1 0.02 10 normal
particle flame ^ ^1 ^3.5 0.1 0.1 0.1 0.01 20 normal
particle flame ^ ^1 ^4 0.1 0.1 0.1 0.04 20 normal
particle end_rod ^ ^1 ^4 0.1 0.1 0.1 0.01 10 normal

function demonslayer:breathing/sun/dmg
tag @s add immune
execute positioned ^ ^1 ^2 positioned ~-.6 ~-.5 ~-.6 as @e[dx=1.2,dz=1.2,dy=1,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1
execute positioned ^ ^1 ^3 positioned ~-.6 ~-.5 ~-.6 as @e[dx=1.2,dz=1.2,dy=1,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1
execute positioned ^ ^1 ^4 positioned ~-.6 ~-.5 ~-.6 as @e[dx=1.2,dz=1.2,dy=1,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1

tag @s remove immune