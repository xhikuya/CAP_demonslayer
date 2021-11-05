execute if score @s ds_formtime matches 2 run function demonslayer:demon/bda/xhi_denia/sotfg/dmg
execute if score @s ds_formtime matches 2 run tag @s add immune
execute if score @s ds_formtime matches 2 positioned ^ ^ ^1 positioned ~-1 ~2 ~-1 run scoreboard players operation @e[dx=2,dy=-4,dz=2,tag=!immune] dmg = #ds:temp var1
execute if score @s ds_formtime matches 2 run tag @s remove immune
particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 10 normal
execute positioned ~ ~-2 ~ run function demonslayer:demon/bda/xhi_denia/sotfg/slash_3