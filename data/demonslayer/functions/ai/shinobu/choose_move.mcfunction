function demonslayer:ai/slayer_core/range

execute if entity @s[tag=melee,predicate=demonslayer:tanj_chance] run function demonslayer:ai/shinobu/breathing/compound/init
execute if score @s ds_cooldown matches 1.. run scoreboard players add @s ds_cooldown 30
execute if entity @s[tag=melee,predicate=demonslayer:tanj_chance] at @s run function demonslayer:ai/shinobu/breathing/flut/init
execute if entity @s[tag=closerange] at @s run function demonslayer:ai/shinobu/breathing/flut/init
execute if entity @s[tag=midrange,predicate=demonslayer:tanj_chance] run function demonslayer:ai/shinobu/breathing/caprice/init
execute if entity @s[tag=midrange,predicate=demonslayer:tanj_chance] run function demonslayer:ai/shinobu/breathing/flut/init
execute if entity @s[tag=longrange] run function demonslayer:ai/shinobu/breathing/caprice/init



scoreboard players set @s var1 0

