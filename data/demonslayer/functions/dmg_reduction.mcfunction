

execute store result score #ds:temp var3 run scoreboard players get @s stat_def
scoreboard players remove #ds:temp var3 40
execute if score #ds:temp var3 matches ..0 run scoreboard players set #ds:temp var3 0
scoreboard players operation @s dmg -= #ds:temp var3
execute if score @s dmg matches ..0 run scoreboard players set @s dmg 1
execute as @s[predicate=core:dmg] at @s run function core:damage/init
execute as @s[predicate=core:dmg,type=!player] at @s run function core:damage/mobs/init

