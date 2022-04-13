
scoreboard players add @s var1 1

execute if score @s var1 matches 1 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/1
execute if score @s var1 matches 2 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/2
execute if score @s var1 matches 3 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/3
execute if score @s var1 matches 4 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/4
execute if score @s var1 matches 5 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/5
execute if score @s var1 matches 6 rotated ~ 0 run function demonslayer:breathing/sun/burning_bones/circle_3/6

kill @s[scores={var1=7}]