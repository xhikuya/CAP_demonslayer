execute if score @s ds_formtime matches 8 run tag @s add immune
execute if score @s ds_formtime matches 8 positioned ^ ^ ^1 positioned ~-1.5 ~-.5 ~-1.5 run scoreboard players operation @e[dx=3,dy=1,dz=3,tag=!immune] dmg = #ds:temp var1
execute if score @s ds_formtime matches 8 run tag @s remove immune

execute at @s if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute at @s if entity @s[predicate=core:dmg] run playsound item.shield.break player @a ~ ~ ~

execute if score @s ds_formtime matches 3 run function demonslayer:demon/bda/xhi_denia/plasma/1_slash
execute if score @s ds_formtime matches 2..3 run function demonslayer:demon/bda/xhi_denia/plasma/2_slash
execute if score @s ds_formtime matches 2 run function demonslayer:demon/bda/xhi_denia/plasma/3_slash

