scoreboard players set ds_summon var1 0
scoreboard players set ds_summon var2 0

execute store result score ds_summon var1 run execute if entity @e[tag=ds_slayer]
execute store result score ds_summon var2 run execute if entity @e[tag=ds_demon]

execute as @e[type=zombie,tag=!custom,tag=!ds_checked] at @s run function demonslayer:summon/spawning

schedule function demonslayer:spawn 4s replace