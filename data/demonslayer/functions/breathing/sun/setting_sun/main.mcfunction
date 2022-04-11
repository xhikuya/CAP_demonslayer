attribute @s generic.movement_speed modifier add f35f79b2-47b2-4d8a-8f26-e07d71fc13e9 "sun movement" -0.4 multiply
execute if score @s ds_formtime matches 7 run effect clear @s levitation

execute if score @s ds_formtime matches 5 rotated ~-110 2 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-100 4 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-90 6 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-80 8 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-70 10 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-60 12 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-50 12 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-40 14 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-30 14 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-20 16 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 5 rotated ~-10 16 run function demonslayer:breathing/sun/setting_sun/particle

#execute if score @s ds_formtime matches 9 rotated ~20 0 run function demonslayer:breathing/sun/setting_sun/particle
#execute if score @s ds_formtime matches 5 rotated ~30 0 run function demonslayer:breathing/sun/setting_sun/particle

execute if score @s ds_formtime matches 4 run playsound entity.player.attack.sweep player @a ~ ~ ~
execute if score @s ds_formtime matches 4 run playsound item.firecharge.use player @a ~ ~ ~
execute if score @s ds_formtime matches 4 run playsound entity.generic.explode player @a ~ ~ ~


execute if score @s ds_formtime matches 4 rotated ~ 16 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~10 16 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~20 16 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~30 14 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~40 14 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~50 12 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~60 12 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~70 10 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~80 8 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~90 6 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~100 4 run function demonslayer:breathing/sun/setting_sun/particle
execute if score @s ds_formtime matches 3 rotated ~100 2 run function demonslayer:breathing/sun/setting_sun/particle


#execute if score @s ds_formtime matches 4 rotated ~-20 0 run function demonslayer:breathing/sun/setting_sun/particle

