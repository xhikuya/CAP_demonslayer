execute if predicate demonslayer:in_selection at @s run function demonslayer:demon/spawn
execute if predicate demonslayer:demonspawn_chance unless entity @p[predicate=!demonslayer:strong] at @s run function demonslayer:demon/spawn
execute if predicate demonslayer:demonspawn_chance_strong if entity @p[predicate=demonslayer:strong] at @s run function demonslayer:demon/spawn