execute if entity @s[tag=!ghostt] run gamemode spectator @s
execute if entity @s[tag=ghostt] run gamemode survival @s

tag @s[gamemode=survival] remove ghostt
tag @s[gamemode=spectator] add ghostt

scoreboard players add @s ds_ghostswordc 40
