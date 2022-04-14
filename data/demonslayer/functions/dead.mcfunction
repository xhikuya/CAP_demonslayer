scoreboard players operation @s stamina = @s max_stamina
execute if entity @s[tag=demon_boost,tag=eternal] run function demonslayer:demon/death_stat
execute if entity @s[tag=!demon_boost] run function demonslayer:slayer/advancements
execute as @s[tag=!eternal,tag=demon_boost] run function demonslayer:demon/turn_demon_human
tag @s[tag=!eternal] remove demon_boost
scoreboard players reset @s ds_death


scoreboard players set @s ds_wist_tick 0
scoreboard players set @s ds_wisteria 0
scoreboard players set @s ds_formtime 0
