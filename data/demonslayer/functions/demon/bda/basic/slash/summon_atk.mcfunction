execute unless score @s ds_formtime matches 1.. if predicate demonslayer:25_chance at @s rotated ~ 0 positioned ^ ^.5 ^1.3 run function demonslayer:demon/bda/basic/slash/atk2
execute unless score @s ds_formtime matches 1.. if predicate demonslayer:25_chance at @s rotated ~ 0 positioned ^ ^ ^1.5 run function demonslayer:demon/bda/basic/slash/atk1
execute unless score @s ds_formtime matches 1.. if predicate demonslayer:25_chance at @s rotated ~ 0 positioned ^ ^.5 ^1.3 run function demonslayer:demon/bda/basic/slash/atk25
execute unless score @s ds_formtime matches 1.. if predicate demonslayer:25_chance at @s rotated ~ 0 positioned ^ ^ ^1.5 run function demonslayer:demon/bda/basic/slash/atk15
execute unless score @s ds_formtime matches 1.. at @s rotated ~ 0 positioned ^ ^.5 ^1.3 run function demonslayer:demon/bda/basic/slash/atk15
execute if entity @s[tag=!ds_demon] run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~
execute if entity @s[tag=ds_demon] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~

scoreboard players remove @s[tag=ds_demon] var2 5