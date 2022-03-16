kill @s
execute unless entity @a[predicate=demonslayer:strong] run function demonslayer:summon/tanjiro
execute if entity @a[predicate=demonslayer:strong] if predicate demonslayer:tanj_spawn run function demonslayer:summon/tanjiro
execute if entity @a[predicate=demonslayer:strong] if predicate demonslayer:kocho_spawn run function demonslayer:summon/shinobu
tp @s 0 -10 0