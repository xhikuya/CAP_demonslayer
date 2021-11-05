execute as @s[tag=!nar_hit] at @s run tp @s ^ ^ ^0.3
execute unless block ^ ^ ^0.4 #airs run tag @s add nar_hit
execute as @s[tag=!nar_hit] at @s run tp @s ^ ^ ^0.3
execute unless block ^ ^ ^0.4 #airs run tag @s add nar_hit

scoreboard players add @s var1 1
execute if score @s var1 matches 3 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/fire_circle1
execute if score @s var1 matches 3 run playsound entity.generic.explode player @a ~ ~ ~
execute if score @s var1 matches 3 run playsound entity.wither.break_block player @a

execute if score @s var1 matches 10 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/firecircle2
execute if score @s var1 matches 20.. rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/firecircle3
kill @s[scores={var1=25..}]