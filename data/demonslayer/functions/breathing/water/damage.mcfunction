execute store result score #ds:temp var1 run attribute @s generic.attack_damage get 11
scoreboard players set #ds:temp var2 3
execute store result score #ds:temp var3 run scoreboard players get @s stat_power
scoreboard players operation #ds:temp var3 /= #ds:temp var2
execute if score #ds:temp var3 matches ..0 run scoreboard players set #ds:temp var3 0
scoreboard players add #ds:temp var3 1
scoreboard players operation #ds:temp var1 *= #ds:temp var3

scoreboard players set #ds:temp var2 2
execute if entity @s[tag=demon_boost] run scoreboard players operation #ds:temp var1 /= #ds:temp var2

execute if predicate demonslayer:enchants/sharpness run scoreboard players add #ds:temp var1 5
execute if predicate demonslayer:enchants/sharpness_1 run scoreboard players add #ds:temp var1 5
execute if predicate demonslayer:enchants/sharpness_2 run scoreboard players add #ds:temp var1 10
execute if predicate demonslayer:enchants/sharpness_3 run scoreboard players add #ds:temp var1 15
execute if predicate demonslayer:enchants/sharpness_4 run scoreboard players add #ds:temp var1 20
execute if predicate demonslayer:enchants/sharpness_5 run scoreboard players add #ds:temp var1 25



execute unless entity @e[tag=death_message] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["death_message"]}
data merge entity @e[tag=death_message,limit=1] {CustomName:'{"text": "died to water breathing","color": "white"}'}