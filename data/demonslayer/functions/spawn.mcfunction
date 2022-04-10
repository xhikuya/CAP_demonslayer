execute as @e[type=#demonslayer:hostiles,tag=!custom,tag=!ds_checked] at @s if predicate demonslayer:in_selection at @s run function demonslayer:demon/spawn
execute unless predicate demonslayer:in_selection as @e[type=zombie,tag=!custom,tag=!ds_checked] if predicate demonslayer:demonspawn_chance unless entity @p[predicate=demonslayer:strong] at @s run function demonslayer:demon/spawn
execute unless predicate demonslayer:in_selection as @e[type=zombie,tag=!custom,tag=!ds_checked] if predicate demonslayer:75_chance if entity @p[predicate=demonslayer:strong] at @s run function demonslayer:demon/spawn

execute unless predicate demonslayer:in_selection as @e[type=zombie,tag=!custom,tag=!ds_checked] if predicate demonslayer:slayerspawn_chance at @s run function demonslayer:slayer/spawn
execute as @e[type=zombie,tag=!ds_checked] run tag @s add ds_checked
schedule function demonslayer:spawn 4s replace