execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_bdamove 1
scoreboard players set @s[scores={ds_bdamove=2..}] ds_bdamove 1

execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 1 run tellraw @s {"text": "Slash","color": "white"}
execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#> Actual moves
execute if predicate core:atked_full if predicate demonslayer:20_chance at @s rotated ~ 0 positioned ^ ^.5 ^1.3 run function demonslayer:demon/bda/basic/atk2
execute if predicate core:atked_full if predicate demonslayer:20_chance at @s rotated ~ 0 positioned ^ ^.5 ^1.3 run function demonslayer:demon/bda/basic/atk25
execute if predicate core:atked_full if predicate demonslayer:20_chance at @s rotated ~ 0 positioned ^ ^ ^1.5 run function demonslayer:demon/bda/basic/atk
execute if predicate core:atked_full if predicate demonslayer:20_chance at @s rotated ~ 0 positioned ^ ^ ^1 run function demonslayer:demon/bda/basic/atk15
execute if predicate core:atked_full if predicate demonslayer:20_chance at @s rotated ~ 0 positioned ^ ^ ^1 run function demonslayer:demon/bda/basic/atk152

execute if predicate core:click unless score @s[scores={ds_bdamove=1}] stamina matches 26.. at @s run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=26..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 1 at @s run function demonslayer:demon/bda/basic/slash/init
