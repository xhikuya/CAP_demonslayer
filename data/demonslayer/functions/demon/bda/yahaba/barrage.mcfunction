tp @s ~ ~ ~ facing entity @p
execute if score @s ds_formtime matches 20 positioned ^-.4 ^ ^ run function demonslayer:demon/bda/yahaba/barrage/arrow_15
execute if score @s ds_formtime matches 15 run function demonslayer:demon/bda/yahaba/barrage/arrow_2
execute if score @s ds_formtime matches 10 positioned ^-.5 ^.3 ^ run function demonslayer:demon/bda/yahaba/barrage/arrow_1
execute if score @s ds_formtime matches 6 positioned ~ ~.5 ~ run function demonslayer:demon/bda/yahaba/barrage/arrow_1
execute if score @s ds_formtime matches 2 positioned ^.4 ^.4 ^ run function demonslayer:demon/bda/yahaba/barrage/arrow_15
execute if score @s ds_formtime matches 1 positioned ^-.8 ^ ^ run function demonslayer:demon/bda/yahaba/barrage/arrow_2

execute if score @s ds_formtime matches 1 run scoreboard players set @s ds_formtime 0