scoreboard players remove @s stat_stamina 3
scoreboard players remove @s max_stamina 60
scoreboard players remove @s stat_power 2
scoreboard players remove @s stat_control 2
scoreboard players remove @s stat_def 5
execute if score @s max_stamina matches ..49 run scoreboard players set @s max_stamina 50
execute if score @s stat_stamina matches ..0 run scoreboard players set @s stat_stamina 0
execute if score @s stat_def matches ..0 run scoreboard players set @s stat_def 0
execute if score @s stat_power matches ..0 run scoreboard players set @s stat_power 0
execute if score @s stat_control matches ..0 run scoreboard players set @s stat_control 0
execute if score @s stat_stamina matches ..0 run scoreboard players set @s stat_stamina 0
scoreboard players remove @s ds_blood 1
execute if score @s ds_blood matches ..0 run scoreboard players set @s ds_blood 0
function demonslayer:demon/attributes
execute unless data entity @s SpawnX run spreadplayers ~ ~ 1 100 under 50 true @s
execute unless data entity @s SpawnX run spawnpoint @s
effect give @s instant_health 40 2