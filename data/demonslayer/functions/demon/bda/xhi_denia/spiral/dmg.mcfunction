execute store result score #ds:temp var1 run attribute @s generic.attack_damage get 12.5
scoreboard players set #ds:temp var2 4
execute store result score #ds:temp var3 run scoreboard players get @s stat_power
scoreboard players operation #ds:temp var3 /= #ds:temp var2
execute if score #ds:temp var3 matches 1 run scoreboard players set #ds:temp var3 2
execute if score #ds:temp var3 matches ..0 run scoreboard players set #ds:temp var3 1
scoreboard players operation #ds:temp var1 *= #ds:temp var3

