
attribute @s generic.movement_speed modifier add f35f79b2-47b2-4d8a-8f26-e07d71fc13e9 "sun movement" -0.95 multiply
execute if score @s ds_formtime matches 27 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^1 run function demonslayer:breathing/sun/burning_bones/particle
execute if score @s ds_formtime matches 25 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^1.5 run function demonslayer:breathing/sun/burning_bones/particle
execute if score @s ds_formtime matches 23 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^2 run function demonslayer:breathing/sun/burning_bones/particle
execute if score @s ds_formtime matches 21 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^2.5 run function demonslayer:breathing/sun/burning_bones/particle
execute if score @s ds_formtime matches 19 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^3 run function demonslayer:breathing/sun/burning_bones/particle
execute if score @s ds_formtime matches 17 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^3.5 run function demonslayer:breathing/sun/burning_bones/particle
execute if score @s ds_formtime matches 15 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^4 run function demonslayer:breathing/sun/burning_bones/particle
execute if score @s ds_formtime matches 13 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^4.5 run function demonslayer:breathing/sun/burning_bones/particle

execute at @s if score @s ds_formtime matches 27 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/init
execute at @s if score @s ds_formtime matches 20 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/init
