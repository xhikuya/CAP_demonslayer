execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_bdamove 1
scoreboard players set @s[scores={ds_bdamove=4..}] ds_bdamove 1

execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 1 run tellraw @s {"text": "Vector Arrow(forward)","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 2 run tellraw @s {"text": "Vector Arrow(up)","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 3 run tellraw @s {"text": "Vector Arrow(barrage)","color": "red"}

execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#> Actual moves


execute if predicate core:click unless score @s[scores={ds_bdamove=1}] stamina matches 20.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 1 run function demonslayer:demon/bda/yahaba/arrow_1

execute if predicate core:click unless score @s[scores={ds_bdamove=2}] stamina matches 30.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=30..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 2 run function demonslayer:demon/bda/yahaba/arrow_2

execute if predicate core:click unless score @s[scores={ds_bdamove=3}] stamina matches 30.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=60..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 3 run function demonslayer:demon/bda/yahaba/barrage_init

execute if score @s ds_formtime matches 1.. if score @s ds_bdamove matches 3 run function demonslayer:demon/bda/yahaba/barrage