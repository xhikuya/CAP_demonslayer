tag @s add ds_this
execute if score @s ds_formtime matches 13 run function demonslayer:ai/shinobu/breathing/caprice/dive
execute if score @s ds_formtime matches ..12 run function demonslayer:ai/shinobu/breathing/caprice/dmg
execute if score @s ds_formtime matches ..12 run effect give @s slow_falling 1 0 true
tag @s remove ds_this