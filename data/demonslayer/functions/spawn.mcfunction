execute as @e[type=zombie,tag=!custom,tag=!ds_checked] if predicate demonslayer:demonspawn_chance at @s unless entity @a[distance=..25] run function demonslayer:demon/spawn
execute as @e[type=zombie,tag=!custom,tag=!ds_checked] if predicate demonslayer:slayerspawn_chance at @s unless entity @a[distance=..25] run function demonslayer:slayer/spawn
execute as @e[type=zombie,tag=!ds_checked] run tag @s add ds_checked
