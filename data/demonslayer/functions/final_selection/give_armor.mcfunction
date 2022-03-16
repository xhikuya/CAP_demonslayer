execute unless entity @s[tag=ds_given] if predicate demonslayer:50_chance run function demonslayer:final_selection/black_armor
execute unless entity @s[tag=ds_given] if predicate demonslayer:50_chance run function demonslayer:final_selection/red_armor
execute unless entity @s[tag=ds_given] run function demonslayer:final_selection/black_armor

tag @s remove ds_given