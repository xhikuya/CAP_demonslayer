particle flame ^ ^ ^1.5 0.1 0.1 0.1 0 20 normal
particle flame ^ ^ ^2 0.1 0.1 0.1 0.02 20 normal
particle flame ^ ^ ^2.5 0.1 0.1 0.1 0 20 normal
execute if predicate demonslayer:30_chance run particle sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 2 normal

tag @s add immune
function demonslayer:breathing/sun/dmg
execute positioned ^ ^ ^2.5 positioned ~-.5 ~-1 ~-.5 run scoreboard players operation @e[dx=1,dy=2,dz=1,tag=!immune] dmg = #ds:temp var1
tag @s remove immune