scoreboard players add @s ds_cooldown 300
effect give @s[scores={ds_blood=1..9}] minecraft:regeneration 10 1 true
effect give @s[scores={ds_blood=10..19}] minecraft:regeneration 5 3 true
effect give @s[scores={ds_blood=20..33}] minecraft:regeneration 3 4 true
effect give @s[scores={ds_blood=34..}] minecraft:regeneration 1 6 true
scoreboard players remove @s stamina 75
scoreboard players add @s stamina_cool 200