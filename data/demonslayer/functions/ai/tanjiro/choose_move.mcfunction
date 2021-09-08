tag @s remove closerange
tag @s remove midrange
tag @s remove longrange

execute if entity @a[distance=..6,gamemode=!creative] run tag @s add closerange
execute unless entity @a[distance=..6,gamemode=!creative] if entity @a[distance=..11,gamemode=!creative] run tag @s add midrange
execute unless entity @a[distance=..10,gamemode=!creative] if entity @a[distance=12..17,gamemode=!creative] run tag @s add longrange

execute if entity @s[tag=closerange] run function demonslayer:ai/tanjiro/breathing/wheel
execute if entity @s[tag=midrange] run function demonslayer:ai/tanjiro/breathing/surface_slash_init
execute if entity @s[tag=longrange] run function demonslayer:ai/tanjiro/breathing/third_init

scoreboard players set @s var1 0
