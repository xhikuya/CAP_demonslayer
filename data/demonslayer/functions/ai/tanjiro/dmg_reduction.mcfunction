
scoreboard players set #ds:temp var1 2
execute if entity @s[scores={stat_power=3..},tag=!demon_boost] run scoreboard players operation @s dmg /= #ds:temp var1
execute if entity @s[scores={ds_formtime=1..}] run scoreboard players operation @s dmg /= #ds:temp var1

function core:damage/mobs/init
