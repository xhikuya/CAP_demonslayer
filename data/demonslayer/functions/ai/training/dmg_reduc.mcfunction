execute if entity @s[scores={ds_lhit=1..}] run scoreboard players set @s dmg 0
execute as @s[predicate=core:dmg] at @s run function core:damage/mobs/init
