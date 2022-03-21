item modify entity @s weapon.mainhand demonslayer:bamboo
#scoreboard players add @s ds_lhit 5

execute if entity @s[x_rotation=-70..-25] run function demonslayer:breathing/bamboo/atk/second/atk
execute unless entity @s[x_rotation=-70..-25] if predicate demonslayer:10_chance run function demonslayer:breathing/bamboo/atk/third/atk
execute unless entity @s[x_rotation=-70..-25] if predicate demonslayer:10_chance if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/fourth/atk
execute unless entity @s[x_rotation=-70..-25] if predicate demonslayer:10_chance if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/fifth/atk
execute unless entity @s[x_rotation=-70..-25] if predicate demonslayer:10_chance if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/sixth/atk
execute unless entity @s[x_rotation=-70..-25] if predicate demonslayer:15_chance if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/seventh/atk
execute unless entity @s[x_rotation=-70..-25] if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/first/atk
