execute if score @s ds_formtime matches 3 run execute rotated ~-20 ~ run particle flame ^ ^ ^1.5 0.1 0.1 0.1 0.01 10 normal
execute if score @s ds_formtime matches 3 run execute rotated ~-10 ~ run particle flame ^ ^ ^1.5 0.1 0.1 0.1 0.01 10 normal
execute if score @s ds_formtime matches 3 run execute rotated ~ ~ run particle flame ^ ^ ^1.5 0.1 0.1 0.1 0.01 10 normal
execute if score @s ds_formtime matches 3 run execute rotated ~10 ~ run particle flame ^ ^ ^1.5 0.1 0.1 0.1 0.01 10 normal
execute if score @s ds_formtime matches 2 run execute rotated ~20 ~ run particle flame ^ ^ ^1.5 0.1 0.1 0.1 0.01 10 normal
execute if score @s ds_formtime matches 2 run execute rotated ~30 ~ run particle flame ^ ^ ^1.5 0.1 0.1 0.1 0.01 10 normal
execute if score @s ds_formtime matches 2 run execute rotated ~40 ~ run particle flame ^ ^ ^1.5 0.1 0.1 0.1 0.01 10 normal


execute if score @s ds_formtime matches 2 run function demonslayer:demon/bda/xhi_denia/plasma/dmg
execute if score @s ds_formtime matches 2 run tag @s add immune
execute if score @s ds_formtime matches 2 run forceload add 0 0
execute if score @s ds_formtime matches 2 run kill @e[tag=temp.motion]
execute if score @s ds_formtime matches 2 run execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^.25 ^2 {Tags:["temp.motion"],Duration:10000}
execute if score @s ds_formtime matches 2 positioned ^ ^ ^1 positioned ~-1.5 ~-.5 ~-1.5 run scoreboard players operation @e[dx=3,dy=1,dz=3,tag=!immune] dmg = #ds:temp var1
execute if score @s ds_formtime matches 2 positioned ^ ^ ^1 positioned ~-1.5 ~-.5 ~-1.5 as @e[dx=3,dy=1,dz=3,tag=!immune] run data modify entity @s Motion set from entity @e[tag=temp.motion,limit=1] Pos
execute if score @s ds_formtime matches 2 run tag @s remove immune
