execute as @s[tag=!nar_hit] at @s run tp @s ^ ^ ^0.4
execute unless block ^ ^ ^0.4 #airs run tag @s add nar_hit
execute as @s[tag=!nar_hit] at @s run tp @s ^ ^ ^0.4
execute unless block ^ ^ ^0.4 #airs run tag @s add nar_hit

scoreboard players add @s var1 1
execute if score @s var1 matches 1 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral1/fire_circle
execute if score @s var1 matches 1 run playsound entity.generic.explode player @a ~ ~ ~
execute if score @s var1 matches 1 run playsound entity.wither.break_block player @a

execute if score @s var1 matches 6 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral2/fire_circle
execute if score @s var1 matches 8 run playsound entity.generic.explode player @a ~ ~ ~
execute if score @s var1 matches 8 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral3/fire_circle
kill @s[scores={var1=10..}]