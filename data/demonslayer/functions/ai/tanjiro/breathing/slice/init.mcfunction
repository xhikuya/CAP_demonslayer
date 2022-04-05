scoreboard players set @s ds_formtime 0
execute if predicate demonslayer:30_chance unless score @s ds_formtime matches 1.. rotated ~ 0 positioned ~ ~.4 ~ run function demonslayer:breathing/water/attack/slash_2
execute if predicate demonslayer:25_chance unless score @s ds_formtime matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/water/attack/slash_3
execute if predicate demonslayer:25_chance unless score @s ds_formtime matches 1.. rotated ~ 0 positioned ~ ~-.1 ~ run function demonslayer:breathing/water/attack/slash_4
playsound entity.player.attack.sweep neutral @a ~ ~ ~
execute unless score @s ds_formtime matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/water/attack/slash_1
scoreboard players set @s var5 0