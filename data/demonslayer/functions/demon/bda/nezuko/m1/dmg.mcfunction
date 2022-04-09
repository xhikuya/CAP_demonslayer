execute store result score #ds:temp var1 run attribute @s generic.attack_damage get 13

execute unless entity @e[tag=death_message] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["death_message"]}
data merge entity @e[tag=death_message,limit=1] {CustomName:'{"text": "died to a Blood Demon Art","color": "white"}'}