scoreboard players set @s ds_formtime 8
scoreboard players add @s xp_power 4
scoreboard players add @s xp_stamina 2
scoreboard players remove @s stamina 13
scoreboard players set @s ds_cooldown 60
effect give @s[predicate=!core:sprint] levitation 1 40 true
tag @s[predicate=core:sprint] add sprint
effect give @s slow_falling 1 0 true