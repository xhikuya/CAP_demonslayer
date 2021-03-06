execute unless entity @e[tag=death_message] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["death_message"]}
data merge entity @e[tag=death_message,limit=1] {CustomName:'{"text": "died of wisteria poisoning","color": "white"}'}
scoreboard players add @s ds_wist_tick 1
scoreboard players add @s[scores={ds_wist_tick=20..}] ai_dmg 80
effect give @s[scores={ds_wist_tick=10..}] slowness 3 5 true
effect clear @s[scores={ds_wist_tick=10..}] regeneration
scoreboard players set @s[scores={ds_wist_tick=20..}] ds_wist_tick 1
scoreboard players remove @s[scores={ds_wisteria=1..}] ds_wisteria 1
scoreboard players remove @s[scores={ds_wisteria=1..},tag=ds_kizuki] ds_wisteria 1

scoreboard players remove @s[scores={ds_wisteria=1..},advancements={demonslayer:demon/blood_25_lm=true,demonslayer:demon/blood_45_um=false}] ds_wisteria 1
scoreboard players remove @s[scores={ds_wisteria=3..},advancements={demonslayer:demon/blood_45_um=true}] ds_wisteria 3

particle dust 0.976 0.714 1 1 ~ ~ ~ 0.1 1 0.1 0 10 normal