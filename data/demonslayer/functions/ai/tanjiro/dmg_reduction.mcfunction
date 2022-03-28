
scoreboard players set #ds:temp var1 3
execute if entity @s[scores={stat_power=3..}] run scoreboard players operation @s dmg /= #ds:temp var1
scoreboard players set #ds:temp var1 2
execute if entity @s[scores={ds_formtime=1..}] run scoreboard players operation @s dmg /= #ds:temp var1
execute if entity @s[scores={ds_lhit=1..}] run scoreboard players set @s dmg 0
function core:damage/mobs/init

