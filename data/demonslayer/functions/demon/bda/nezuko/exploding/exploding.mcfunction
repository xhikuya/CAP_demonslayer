
scoreboard players set @s ds_cooldown 25

execute anchored eyes positioned ^ ^ ^2.5 run function demonslayer:demon/bda/nezuko/exploding/dmg
scoreboard players remove @s[type=player] stamina 20
scoreboard players remove @s[type=player] stamina_cool 50

scoreboard players remove @s[type=!player] var2 2
scoreboard players remove @s[type=!player] var3 10
scoreboard players add @s ds_formtime 1