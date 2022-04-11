scoreboard players set @s var1 0
execute if predicate demonslayer:50_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/sun/slash_combat/slash_1
execute if predicate demonslayer:50_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~.4 ~ run function demonslayer:breathing/sun/slash_combat/slash_2
execute unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/sun/slash_combat/slash_1
item modify entity @s weapon.mainhand demonslayer:fix
