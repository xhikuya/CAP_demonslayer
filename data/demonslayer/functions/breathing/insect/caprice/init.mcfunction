effect give @s levitation 1 50 true
scoreboard players add @s ds_cooldown 50
scoreboard players set @s ds_formtime 40
scoreboard players remove @s stamina 12
particle cloud ~ ~1 ~ 0.1 0.1 0.1 1 30 normal
particle explosion
playsound entity.generic.explode player @a ~ ~ ~