function demonslayer:demon/bda/xhi_denia/sotfg/dmg
tag @s add immune
execute positioned ~-1 ~-12 ~-1 run scoreboard players operation @e[dx=2,dy=24,dz=2,tag=!immune] dmg = #ds:temp var1
execute if score @s ds_formtime matches 3 run tag @s remove immune
particle flame ~ ~ ~ 0.1 -2.5 0.1 0.05 300 normal
particle flame ~ ~-9 ~ 0.1 -2.5 0.1 0.05 300 normal

particle sweep_attack ~ ~ ~ 0.1 -5 0.1 0.05 5 normal
particle sweep_attack ~ ~-6 ~ 0.1 -5 0.1 0.05 5 normal
