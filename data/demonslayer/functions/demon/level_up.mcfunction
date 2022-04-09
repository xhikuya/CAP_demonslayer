execute if entity @s[advancements={demonslayer:demon/blood_15=false},scores={ds_blood=14}] if predicate demonslayer:50_chance run function demonslayer:demon/bda/random
scoreboard players add @s xp_power 16
scoreboard players add @s xp_stamina 20
scoreboard players add @s xp_def 20
scoreboard players add @s ds_blood 1
scoreboard players set @s ds_bloodxp 0
scoreboard players add @s xp_control 8
