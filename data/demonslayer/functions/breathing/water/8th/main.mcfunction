execute if score @s ds_formtime matches 35 run effect clear @s levitation
scoreboard players set @s[scores={ds_formtime=2..10}] ds_formtime 10
execute if score @s ds_formtime matches ..28 rotated ~ 0 run particle cloud ^ ^1.3 ^.7 0 0 0 0 1 normal
execute if score @s ds_formtime matches ..28 rotated ~ 0 run particle falling_water ^ ^1.3 ^.7 0.1 0.1 0.1 0.3 50 normal
execute if score @s ds_formtime matches ..34 at @s unless block ~ ~-2 ~ #airs run effect give @s slow_falling 1 2 true
execute if score @s[nbt={OnGround:1b}] ds_formtime matches ..34 run function demonslayer:breathing/water/8th/strike

