
execute unless entity @p[predicate=demonslayer:strong] unless entity @s[tag=spawned] if predicate demonslayer:50_chance run function demonslayer:summon/tanjiro
execute unless entity @p[predicate=demonslayer:strong] unless entity @s[tag=spawned] run function demonslayer:summon/kaigaku
execute if entity @p[predicate=demonslayer:strong] unless entity @s[tag=spawned] if predicate demonslayer:tanj_spawn run function demonslayer:summon/tanjiro
execute if entity @p[predicate=demonslayer:strong] unless entity @s[tag=spawned] if predicate demonslayer:kocho_spawn run function demonslayer:summon/shinobu
tp @s 0 -10 0
kill @s