function demonslayer:ai/slayer_core/range


execute if entity @s[tag=melee] at @s run function demonslayer:ai/tanjiro/breathing/slash
execute if entity @s[tag=closerange,predicate=demonslayer:tanj_chance] at @s run function demonslayer:ai/tanjiro/breathing/whirlpool/init
execute if entity @s[tag=closerange,predicate=demonslayer:tanj_chance] run function demonslayer:ai/tanjiro/breathing/wheel
execute if entity @s[tag=midrange,predicate=demonslayer:tanj_chance] at @s run function demonslayer:ai/tanjiro/breathing/surface_slash_init
execute if entity @s[tag=midrange,predicate=demonslayer:tanj_chance] at @s run function demonslayer:ai/tanjiro/breathing/third_init
execute if entity @s[tag=longrange] at @s run function demonslayer:ai/tanjiro/breathing/third_init


scoreboard players set @s var1 0

