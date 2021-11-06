
scoreboard players set #ds:temp var1 2
execute if entity @s[advancements={demonslayer:defense/45_def=true},tag=!demon_boost] run scoreboard players operation @s dmg /= #ds:temp var1
execute if entity @s[tag=!demon_boost,scores={ds_formtime=1..}] run scoreboard players operation @s dmg /= #ds:temp var1
scoreboard players set #ds:temp var1 30
execute if entity @s[advancements={demonslayer:defense/45_def2=true},tag=demon_boost] run scoreboard players operation @s dmg -= #ds:temp var1

execute as @s[predicate=core:dmg] at @s run function core:damage/init
execute as @s[predicate=core:dmg,type=!player] at @s run function core:damage/mobs/init

