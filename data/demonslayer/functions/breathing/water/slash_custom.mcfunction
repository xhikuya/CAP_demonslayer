scoreboard players set @s var1 0
execute if predicate demonslayer:30_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~.4 ~ run function demonslayer:breathing/water/attack/slash_2
execute if predicate demonslayer:25_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/water/attack/slash_3
execute if predicate demonslayer:25_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~-.1 ~ run function demonslayer:breathing/water/attack/slash_4

execute unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/water/attack/slash_1
item modify entity @s weapon.mainhand demonslayer:fix
