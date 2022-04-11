particle dripping_water ^ ^1.4 ^ 0.1 0.1 0.1 0.2 30 normal
function demonslayer:ai/tanjiro/breathing/damage
tag @s add immune
execute rotated ~ 0 positioned ~-1 ~-1 ~-1 as @e[dx=2,dz=2,dy=2,tag=!immune,scores={dmg=0},predicate=demonslayer:target_slayer] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune