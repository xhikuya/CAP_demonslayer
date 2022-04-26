execute unless score ds_summon var2 matches 60.. run function demonslayer:summon/demon/spawning
execute unless score ds_summon var1 matches 10.. if predicate demonslayer:slayerspawn_chance at @s run function demonslayer:slayer/spawn
tag @s add ds_checked
schedule function demonslayer:spawn 4s replace