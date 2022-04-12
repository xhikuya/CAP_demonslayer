
scoreboard players set @s var1 0
execute if predicate demonslayer:25_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~.4 ~ run function demonslayer:breathing/nichirin/cattack/atk1
execute if predicate demonslayer:25_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/nichirin/cattack/atk2
execute if predicate demonslayer:30_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/nichirin/cattack/atk3
execute if predicate demonslayer:25_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~-.1 ~ run function demonslayer:breathing/nichirin/cattack/atk4
execute unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/nichirin/cattack/atk1
item modify entity @s weapon.mainhand demonslayer:fix
