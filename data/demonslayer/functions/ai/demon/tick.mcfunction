
execute at @s if predicate demonslayer:skylight unless predicate demonslayer:time_check unless predicate demonslayer:raining unless predicate demonslayer:end run function demonslayer:demon/sun
execute at @s if block ~ ~ ~ lilac run scoreboard players add @s ds_wisteria 1
scoreboard players set @s[scores={ds_wisteria=0}] ds_wist_tick 0
execute at @s[scores={ds_wist_tick=0}] if block ~ ~ ~ lilac run scoreboard players add @s ds_wist_tick 10
execute as @s[scores={ds_wisteria=1..}] at @s run function demonslayer:demon/wisteria
execute if score @s[tag=ds_lm] ds_wisteria matches 1.. run scoreboard players remove @s ds_wisteria 1
execute if score @s[tag=ds_um] ds_wisteria matches 5.. run scoreboard players remove @s ds_wisteria 5


execute if data entity @s HandItems[0].tag{Cap:{ID:1b}} run function demonslayer:ai/demon/nezuko_bda
execute if data entity @s HandItems[0].tag{Cap:{ID:2b}} run function demonslayer:ai/demon/yahaba_bda
execute if data entity @s HandItems[0].tag{Cap:{ID:4b}} run function demonslayer:ai/demon/basic_bda
execute if entity @s[predicate=core:dmg] run function demonslayer:ai/demon/dmg_reduc
execute if block ~ ~.8 ~ water run tag @s add bobber
execute if entity @s[tag=bobber] run function demonslayer:ai/water_swim
execute unless block ~ ~-0.1 ~ water run tag @s remove bobber


scoreboard players add @s ds_formtime 0
scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1