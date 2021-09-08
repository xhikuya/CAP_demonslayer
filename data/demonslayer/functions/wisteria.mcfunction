execute unless entity @e[tag=death_message] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["death_message"]}
data merge entity @e[tag=death_message,limit=1] {CustomName:'{"text": "died of wisteria poisoning","color": "white"}'}
scoreboard players add @s ds_wist_tick 1
scoreboard players add @s[scores={ds_wist_tick=10..}] dmg 60
scoreboard players set @s[scores={ds_wist_tick=10..}] ds_wist_tick 0

particle dust 0.976 0.714 1 1 ~ ~ ~ 0.1 1 0.1 0 10 normal