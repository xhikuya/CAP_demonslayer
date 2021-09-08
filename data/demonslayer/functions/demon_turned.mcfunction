tag @s add demon_boost
scoreboard players add @s stat_stamina 3
scoreboard players add @s max_stamina 60
scoreboard players add @s stat_power 2
scoreboard players add @s stat_control 2
scoreboard players add @s stat_def 5
scoreboard players set @s ds_blood 1
scoreboard players set @s ds_bloodxp 1

execute at @s run spreadplayers ~ ~ 1 100 under 50 true @s
execute at @s run spawnpoint @s
playsound item.totem.use player @s ~ ~ ~ 0.5 1.3
playsound entity.zombie_villager.converted player @s ~ ~ ~
advancement revoke @s only demonslayer:eternal_demon

