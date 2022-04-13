execute if score @s ds_formtime matches 30 positioned ~ ~1.5 ~ rotated ~ 0 run particle flame ^ ^ ^0.5
execute if score @s ds_formtime matches 30 positioned ~ ~1.5 ~ rotated ~ 0 run particle flame ^ ^ ^1
execute at @s if score @s ds_formtime matches 30 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_1/1
execute at @s if score @s ds_formtime matches 29 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_1/2
execute at @s if score @s ds_formtime matches 28 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_1/3
execute at @s if score @s ds_formtime matches 27 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_1/4

execute at @s if score @s ds_formtime matches 24 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/init
execute at @s if score @s ds_formtime matches 14 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/init
