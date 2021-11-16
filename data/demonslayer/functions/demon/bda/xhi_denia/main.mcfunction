execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_bdamove 1
scoreboard players set @s[scores={ds_bdamove=5..}] ds_bdamove 1

execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 1 run tellraw @s {"text": "Denia Flame Style: Lava spiral","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 2 run tellraw @s {"text": "Denia Flame Style: Scorched earth","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 3 run tellraw @s {"text": "Denia Flame Style: Smite of the flame god","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_bdamove matches 4 run tellraw @s {"text": "Denia Flame Style: Plasma blade","color": "red"}

execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#> Actual moves
execute if predicate core:atked run function demonslayer:demon/bda/nezuko/slash
execute if predicate core:click unless score @s[scores={ds_bdamove=1}] stamina matches 60.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=60..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 1 rotated ~ 0 run function demonslayer:demon/bda/xhi_denia/spiral/init

execute if predicate core:click unless score @s[scores={ds_bdamove=2}] stamina matches 25.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=25..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 2 rotated ~ 0 run function demonslayer:demon/bda/xhi_denia/scorch/init

execute if predicate core:click unless score @s[scores={ds_bdamove=3}] stamina matches 40.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=40..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 3 rotated ~ 0 run function demonslayer:demon/bda/xhi_denia/sotfg/init

execute if predicate core:click unless score @s[scores={ds_bdamove=4}] stamina matches 20.. run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=0,ds_formtime=0}] ds_bdamove matches 4 rotated ~ 0 run function demonslayer:demon/bda/xhi_denia/plasma/init


execute if score @s[scores={ds_bdamove=4}] ds_formtime matches 1.. anchored eyes positioned ^ ^ ^1.5 rotated ~ 0 run function demonslayer:demon/bda/xhi_denia/plasma/slash
execute if score @s[scores={ds_bdamove=2}] ds_formtime matches 1.. rotated ~ 0 run function demonslayer:demon/bda/xhi_denia/scorch/main

