
scoreboard players set #ds:temp var1 3
execute if entity @s[tag=ds_um] run scoreboard players operation @s dmg /= #ds:temp var1
execute if entity @s[tag=ds_um1] run scoreboard players operation @s dmg /= #ds:temp var1
scoreboard players set #ds:temp var1 2
execute if entity @s[tag=ds_lm] run scoreboard players operation @s dmg /= #ds:temp var1

execute if entity @s[scores={ds_lhit=1..}] run scoreboard players set @s dmg 0
execute as @s[predicate=core:dmg] at @s run function core:damage/mobs/init
