scoreboard players operation @s stamina = @s max_stamina
#execute if entity @s[tag=demon_boost,tag=eternal] run scoreboard players remove @s stat_stamina 3
#execute if entity @s[tag=demon_boost,tag=eternal] run scoreboard players remove @s max_stamina 60
#execute if entity @s[tag=demon_boost,tag=eternal] run scoreboard players remove @s stat_power 2
#execute if entity @s[tag=demon_boost,tag=eternal] run scoreboard players remove @s stat_control 2
#execute if entity @s[tag=demon_boost,tag=eternal] run scoreboard players remove @s stat_def 5
#execute if entity @s[tag=eternal] run function demonslayer:demon/attributes
execute if entity @s[tag=eternal] run scoreboard players remove @s ds_blood 1
execute if entity @s[tag=eternal,scores={ds_blood=..-1}] run scoreboard players set @s ds_blood 0
execute if entity @s[tag=demon_boost,tag=eternal] run function demonslayer:demon/death_stat
execute if entity @s[tag=!demon_boost] run function demonslayer:slayer/advancements
execute as @s[tag=!eternal,tag=demon_boost] run function demonslayer:demon/turn_demon_human
tag @s[tag=!eternal] remove demon_boost
scoreboard players reset @s ds_death


scoreboard players set @s ds_wist_tick 0
scoreboard players set @s ds_wisteria 0
scoreboard players set @s ds_formtime 0
