execute if score @s ds_formtime matches 2.. at @s run particle dust 1 1 1 3 ~ ~1 ~ 0.6 0.6 0.6 0.5 30
execute if score @s ds_formtime matches 1 run function demonslayer:breathing/sun/fake_rainbow/teleport

attribute @s generic.movement_speed modifier add f35f79b2-47b2-4d8a-8f26-e07d71fc13e9 "sun movement" -1 multiply