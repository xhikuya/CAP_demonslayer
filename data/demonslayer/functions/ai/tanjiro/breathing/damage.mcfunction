execute store result score #ds:temp var1 run attribute @s generic.attack_damage get 11
execute store result score #ds:temp var3 run scoreboard players get @s stat_power
execute if score #ds:temp var3 matches ..0 run scoreboard players set #ds:temp var3 1
scoreboard players operation #ds:temp var1 *= #ds:temp var3
execute unless entity @e[tag=death_message] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["death_message"]}
data merge entity @e[tag=death_message,limit=1] {CustomName:'{"text": "died to water breathing","color": "white"}'}