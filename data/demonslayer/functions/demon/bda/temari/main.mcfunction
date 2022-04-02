execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_bdamove 1
scoreboard players set @s[scores={ds_bdamove=2..}] ds_bdamove 1

execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 1 run tellraw @s {"text": "Throw Ball","color": "red"}
execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#> Actual moves
execute if predicate core:atked run scoreboard players add @s ds_lhit 3

execute if predicate core:click unless score @s[scores={ds_bdamove=1}] stamina matches 20.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 1 run function demonslayer:demon/bda/temari/throw_ball
execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=56,ds_formtime=0},predicate=demonslayer:blood/bda_temari] ds_bdamove matches 1 run function demonslayer:demon/bda/temari/throw_ball
