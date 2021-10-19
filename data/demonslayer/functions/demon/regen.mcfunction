scoreboard players add @s[scores={ds_blood=..20}] ds_cooldown 300
scoreboard players add @s[scores={ds_blood=21..35}] ds_cooldown 150
scoreboard players add @s[scores={ds_blood=36..50}] ds_cooldown 80
scoreboard players add @s[scores={ds_blood=51..74}] ds_cooldown 40
scoreboard players add @s[scores={ds_blood=75..}] ds_cooldown 20


effect give @s[scores={ds_blood=1..9}] minecraft:regeneration 10 1 true
effect give @s[scores={ds_blood=10..19}] minecraft:regeneration 5 3 true
effect give @s[scores={ds_blood=20..33}] minecraft:regeneration 3 4 true
effect give @s[scores={ds_blood=34..}] minecraft:regeneration 1 6 true
scoreboard players remove @s[scores={ds_blood=1..}] stamina 75
scoreboard players remove @s[scores={ds_blood=21..}] stamina 25
scoreboard players remove @s[scores={ds_blood=34..}] stamina 25
scoreboard players remove @s[scores={ds_blood=49..}] stamina 25

scoreboard players add @s stamina_cool 200