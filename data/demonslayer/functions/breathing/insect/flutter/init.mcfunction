effect give @s speed 1 2 true
scoreboard players add @s ds_cooldown 80
scoreboard players set @s ds_formtime 10
scoreboard players remove @s stamina 16
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.6
particle cloud ~ ~1 ~ 0.1 0.1 0.1 1 30 normal