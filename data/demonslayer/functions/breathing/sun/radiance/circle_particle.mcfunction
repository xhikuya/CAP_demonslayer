particle dust 1 0 0 1.4 ^ ^ ^2 0.1 0.1 0.1 0.1 60 normal
particle dust_color_transition 1 0 0.3 1.4 1 0 0.6 ^ ^ ^2 0.1 0.1 0.1 0.1 60 normal
particle flame ^ ^ ^2 0.1 0.1 0.1 0.04 60 normal

tag @s add immune
function demonslayer:breathing/sun/dmg
execute positioned ^ ^ ^2 positioned ~-.8 ~-1 ~-.8 run scoreboard players operation @e[dx=1.6,dy=2,dz=1.6,tag=!immune] dmg = #ds:temp var1
execute positioned ^ ^ ^2 positioned ~-.8 ~-1 ~-.8 if entity @e[dx=1.6,dy=2,dz=1.6,tag=!immune] run playsound entity.player.attack.sweep player @a ~ ~ ~
tag @s remove immune