execute if score @s ds_formtime matches 30 run effect clear @s levitation
execute if score @s ds_formtime matches 21 run function demonslayer:breathing/sun/blue_sky/slash
execute if score @s ds_formtime matches 15 run function demonslayer:breathing/sun/blue_sky/slash2
attribute @s generic.movement_speed modifier add f35f79b2-47b2-4d8a-8f26-e07d71fc13e9 "sun movement" -.5 multiply