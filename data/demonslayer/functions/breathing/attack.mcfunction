scoreboard players add @s ds_lhit 7
scoreboard players set @s var1 0
execute if predicate demonslayer:20_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~.4 ~ run function demonslayer:breathing/nichirin/atk1
execute if predicate demonslayer:20_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/nichirin/atk2
execute if predicate demonslayer:20_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/nichirin/atk3
execute if predicate demonslayer:20_chance unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~-.1 ~ run function demonslayer:breathing/nichirin/atk4
execute unless score @s var1 matches 1.. rotated ~ 0 positioned ~ ~ ~ run function demonslayer:breathing/nichirin/atk1
#item modify entity @s weapon.mainhand demonslayer:fix
