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
execute unless predicate demonslayer:sword run attribute @s generic.attack_speed modifier remove c3f1e13b-5cc5-49c8-9e6b-d0a21976192f
execute unless predicate demonslayer:sword run attribute @s generic.attack_damage modifier remove c3f1e13b-5cc5-49c8-9e6b-d0a21976192f

execute if entity @s[advancements={demonslayer:slayer/refinery_5=true}] if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier add c3f1e13b-5cc5-49c8-9e6b-d0a21976192f "5" 4 add
execute if entity @s[advancements={demonslayer:slayer/refinery_4=true}] if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier add c3f1e13b-5cc5-49c8-9e6b-d0a21976192f "4" 3 add
execute if entity @s[advancements={demonslayer:slayer/refinery_3=true}] if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_speed modifier add c3f1e13b-5cc5-49c8-9e6b-d0a21976192f "2" 2 add
execute if entity @s[advancements={demonslayer:slayer/refinery_3=true}] if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier add c3f1e13b-5cc5-49c8-9e6b-d0a21976192f "3" 2.5 add
execute if entity @s[advancements={demonslayer:slayer/refinery_2=true}] if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_speed modifier add c3f1e13b-5cc5-49c8-9e6b-d0a21976192f "1" 1 add
execute if entity @s[advancements={demonslayer:slayer/refinery_2=true}] if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier add c3f1e13b-5cc5-49c8-9e6b-d0a21976192f "2" 2 add
execute if entity @s[advancements={demonslayer:slayer/refinery_1=true}] if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier add c3f1e13b-5cc5-49c8-9e6b-d0a21976192f "1" 1 add
