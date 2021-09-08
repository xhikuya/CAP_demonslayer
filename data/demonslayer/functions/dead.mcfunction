scoreboard players operation @s stamina = @s max_stamina
execute if entity @s[tag=demon_boost,tag=!eternal] run scoreboard players remove @s stat_stamina 3
execute if entity @s[tag=demon_boost,tag=!eternal] run scoreboard players remove @s max_stamina 60
execute if entity @s[tag=demon_boost,tag=!eternal] run scoreboard players remove @s stat_power 2
execute if entity @s[tag=demon_boost,tag=!eternal] run scoreboard players remove @s stat_control 2
execute if entity @s[tag=demon_boost,tag=!eternal] run scoreboard players remove @s stat_def 5

execute if entity @s[tag=eternal] run scoreboard players remove @s ds_blood 1
execute if entity @s[tag=eternal,scores={ds_blood=..-1}] run scoreboard players set @s ds_blood 0

execute at @s[tag=eternal] unless data entity @s SpawnX run spreadplayers ~ ~ 1 100 under 50 true @s
execute at @s[tag=eternal] unless data entity @s SpawnX run spawnpoint @s
effect give @s instant_health 40 2
tag @s[tag=!eternal] remove demon_boost
scoreboard players reset @s ds_death

scoreboard players set @s ds_wist_tick 0
scoreboard players set @s ds_wisteria 0

