execute if predicate demonslayer:15_chance rotated ~ 0 run function demonslayer:breathing/bamboo/atk/third/atk
execute if predicate demonslayer:15_chance rotated ~ 0 if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/fourth/atk
execute if predicate demonslayer:15_chance rotated ~ 0 if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/fifth/atk
execute if predicate demonslayer:15_chance rotated ~ 0 if score @s ds_cooldown matches 0 run function demonslayer:breathing/bamboo/atk/sixth/atk
execute if score @s ds_cooldown matches 0 rotated ~ 0 run function demonslayer:breathing/bamboo/atk/first/atk

scoreboard players add @s ds_cooldown 4