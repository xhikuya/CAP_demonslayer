
execute unless predicate demonslayer:in_selection if predicate demonslayer:demonspawn_chance2 if entity @p[predicate=demonslayer:strong] run function demonslayer:summon/demon/lower_moon
function demonslayer:summon/demon
tp @s 0 -10 0
kill @s