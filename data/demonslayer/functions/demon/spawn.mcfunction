
execute unless entity @s[tag=spawned] if predicate demonslayer:demonspawn_chance2 if entity @p[predicate=demonslayer:strong] run function demonslayer:summon/demon/lower_moon
execute unless entity @s[tag=spawned] if predicate demonslayer:kaigaku_spawn if entity @p[predicate=demonslayer:strong] run function demonslayer:summon/demon/kaigaku
execute unless entity @s[tag=spawned] run function demonslayer:summon/demon
tp @s 0 -10 0
kill @s