execute unless predicate demonslayer:breathing if predicate core:atked_full run function demonslayer:breathing/attack
execute if predicate demonslayer:1_chance positioned ~ ~1.4 ~ positioned ^ ^ ^.4 run particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0.05 1 normal
execute if predicate demonslayer:1_chance positioned ~ ~1.4 ~ positioned ^ ^ ^.4 run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0.05 1 normal

execute if predicate core:macro if predicate core:shift_click run scoreboard players set @s ds_swap 7
execute if predicate core:macro if predicate core:shift_click run scoreboard players set @s s_click 0
