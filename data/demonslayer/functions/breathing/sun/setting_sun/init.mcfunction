scoreboard players set @s ds_formtime 9
scoreboard players add @s xp_power 1
scoreboard players add @s xp_stamina 3
scoreboard players remove @s stamina 15
scoreboard players set @s ds_cooldown 80
effect give @s levitation 1 15 true
execute rotated ~ 0 if block ^ ^1 ^-.5 #airs if block ^ ^1 ^-1 #airs if block ^ ^1 ^-1.5 #airs run tp @s ^ ^1 ^-2