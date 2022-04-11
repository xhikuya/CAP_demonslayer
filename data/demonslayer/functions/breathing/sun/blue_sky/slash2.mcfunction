
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.8
playsound entity.player.attack.sweep player @a ~ ~ ~
playsound entity.player.attack.sweep player @a ~ ~ ~

playsound item.firecharge.use player @a ~ ~ ~
execute rotated ~90 0 run function demonslayer:breathing/sun/blue_sky/slash2/particle

function demonslayer:breathing/sun/dmg
tag @s add immune

execute rotated ~-90 0 positioned ^ ^ ^13 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^12 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^11 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^10 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^9 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^8 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^7 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^6 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^5 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^4 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^3 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^2 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~-90 0 positioned ^ ^ ^1 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1

execute rotated ~90 0 positioned ^ ^ ^1 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^2 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^3 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^4 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^5 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^6 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^7 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^8 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^9 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^10 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^11 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^12 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1
execute rotated ~90 0 positioned ^ ^ ^13 positioned ~-0.7 ~-15 ~-0.7 run scoreboard players operation @e[dx=1.4,dy=30,dz=1.4,tag=!immune] dmg = #ds:temp var1


tag @s remove immune
