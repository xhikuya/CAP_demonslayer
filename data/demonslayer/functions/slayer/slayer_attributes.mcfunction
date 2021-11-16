execute if score @s stat_control matches 1..6 unless predicate demonslayer:no_stam if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_speed base set 5.56
execute if score @s stat_control matches 7.. unless predicate demonslayer:no_stam if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_speed base set 7.4
execute if score @s stat_control matches 1..6 unless predicate demonslayer:no_stam if predicate demonslayer:sword run attribute @s generic.attack_damage base set 2
execute if score @s stat_control matches 7.. unless predicate demonslayer:no_stam if predicate demonslayer:sword run attribute @s generic.attack_damage base set 4

execute if predicate demonslayer:no_stam run attribute @s generic.attack_speed base set 2.45
execute if predicate demonslayer:no_stam run attribute @s generic.attack_damage base set 0
execute if predicate demonslayer:no_stam run attribute @s generic.attack_speed modifier remove c3f1e13b-5cc5-49c8-9e6b-d0a21976192f
execute if predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier remove c3f1e13b-5cc5-49c8-9e6b-d0a21976192f

execute unless predicate demonslayer:no_stam if score @s stat_control matches ..0 run attribute @s generic.attack_speed base set 4
execute unless predicate demonslayer:no_stam if score @s stat_control matches ..0 run attribute @s generic.attack_damage base set 1

execute unless predicate demonslayer:sword run attribute @s generic.attack_speed base set 4
execute unless predicate demonslayer:sword run attribute @s generic.attack_damage base set 1

function demonslayer:slayer/refinery_attributes
