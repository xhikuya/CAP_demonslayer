particle flame ^ ^ ^ 0.05 0.05 0.05 0.01 20
particle dust 1 0 0 1.6 ^ ^ ^ 0 0 0 0 20
particle firework ^ ^ ^ 0.05 0.05 0.05 0.01 20

tag @s add immune
function demonslayer:breathing/sun/dmg
execute positioned ~-.2 ~-.5 ~-.2 run scoreboard players operation @e[dx=.4,dy=1,dz=.4,tag=!immune] dmg = #ds:temp var1
execute positioned ~-.2 ~-.5 ~-.2 if entity @e[dx=.4,dy=1,dz=.4,tag=!immune] run playsound entity.player.attack.sweep player @a ~ ~ ~
tag @s remove immune