scoreboard players add @s var1 1

execute if score @s var1 matches 1 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/1
execute if score @s var1 matches 2 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/2
execute if score @s var1 matches 3 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/3
execute if score @s var1 matches 4 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/4
execute if score @s var1 matches 5 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/5
execute if score @s var1 matches 6 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/6
execute if score @s var1 matches 7 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/7
execute if score @s var1 matches 8 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/8
execute if score @s var1 matches 9 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/9
execute if score @s var1 matches 10 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_2/10

kill @s[scores={var1=11}]