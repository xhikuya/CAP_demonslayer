execute if score @s ds_formtime matches 10 run playsound entity.player.attack.sweep player @a ~ ~ ~
execute if score @s ds_formtime matches 10 run playsound item.firecharge.use player @a ~ ~ ~

execute if score @s ds_formtime matches 10 rotated ~-70 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 10 rotated ~-60 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 10 rotated ~-50 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 10 rotated ~-40 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 10 rotated ~-30 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 9 rotated ~-20 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 9 rotated ~-10 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 9 rotated ~ 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 9 rotated ~10 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
#execute if score @s ds_formtime matches 9 rotated ~20 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
#execute if score @s ds_formtime matches 8 rotated ~30 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle

execute if score @s ds_formtime matches 6 run playsound entity.player.attack.sweep player @a ~ ~ ~
execute if score @s ds_formtime matches 6 run playsound item.firecharge.use player @a ~ ~ ~

execute if score @s ds_formtime matches 5 rotated ~70 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 5 rotated ~60 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 5 rotated ~50 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 5 rotated ~40 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 5 rotated ~30 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 4 rotated ~20 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 4 rotated ~10 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 4 rotated ~ 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
execute if score @s ds_formtime matches 4 rotated ~-6 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle
#execute if score @s ds_formtime matches 4 rotated ~-20 0 positioned ^ ^1.2 ^2 run function demonslayer:breathing/fire/2nd_ragingsun/particle

execute if score @s ds_formtime matches 4 run scoreboard players set @s ds_cooldown 40
