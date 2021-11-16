
execute rotated ~-60 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~-50 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~-40 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~-30 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~-20 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~-10 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~ ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~10 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~20 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~30 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~40 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~50 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
execute rotated ~60 ~ positioned ^ ^ ^1.5 run function demonslayer:ai/tanjiro/breathing/slash2
scoreboard players set @s ds_formtime 1
execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~
