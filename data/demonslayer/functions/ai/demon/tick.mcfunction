
execute at @s if predicate demonslayer:skylight unless predicate demonslayer:time_check unless predicate demonslayer:raining unless predicate demonslayer:end run function demonslayer:demon/sun
execute at @s if block ~ ~ ~ lilac run scoreboard players add @s ds_wisteria 1
scoreboard players set @s[scores={ds_wisteria=0}] ds_wist_tick 0
execute at @s[scores={ds_wist_tick=0}] if block ~ ~ ~ lilac run scoreboard players add @s ds_wist_tick 10
execute as @s[scores={ds_wisteria=1..}] at @s run function demonslayer:demon/wisteria

execute unless score @s ds_wist_tick matches 1.. run scoreboard players add @s var4 1

execute if score @s var4 matches 40.. run effect give @s instant_damage 1 0 true


execute if data entity @s HandItems[0].tag{Cap:{ID:1b}} run function demonslayer:ai/demon/nezuko_bda
execute if data entity @s HandItems[0].tag{Cap:{ID:2b}} run function demonslayer:ai/demon/yahaba_bda
execute if data entity @s HandItems[0].tag{Cap:{ID:4b}} run function demonslayer:ai/demon/basic_bda

execute if block ~ ~0.5 ~ water run tp @s ~ ~0.2 ~
scoreboard players add @s ds_formtime 0
scoreboard players remove @s[scores={ds_formtime=1..}] ds_formtime 1
scoreboard players set @s[scores={var4=40..}] var4 0
