tag @s remove melee
tag @s remove closerange
tag @s remove midrange
tag @s remove longrange

execute if entity @p[distance=..4,gamemode=!creative] run tag @s add melee
execute if entity @s[tag=!melee] if entity @p[distance=..6,gamemode=!creative] run tag @s add closerange
execute if entity @s[tag=!closerange,tag=!melee] if entity @p[distance=..11,gamemode=!creative] run tag @s add midrange
execute if entity @s[tag=!melee,tag=!closerange,tag=!midrange] if entity @p[distance=12..17,gamemode=!creative] run tag @s add longrange

execute if entity @s[tag=melee,predicate=demonslayer:tanj_chance] run function demonslayer:ai/tanjiro/breathing/whirlpool/init
execute if entity @s[tag=melee,predicate=demonslayer:tanj_chance] at @s run function demonslayer:ai/tanjiro/breathing/slash
execute if entity @s[tag=closerange] run function demonslayer:ai/tanjiro/breathing/wheel
execute if entity @s[tag=midrange] run function demonslayer:ai/tanjiro/breathing/surface_slash_init
execute if entity @s[tag=longrange] run function demonslayer:ai/tanjiro/breathing/third_init

scoreboard players set @s var1 0
