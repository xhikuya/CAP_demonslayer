
scoreboard players set @s ds_cooldown 10

function demonslayer:demon/bda/basic/slash/summon_atk
scoreboard players remove @s[type=player] stamina 25
scoreboard players remove @s[type=player] stamina_cool 50

scoreboard players remove @s[type=!player] var2 2
scoreboard players remove @s[type=!player] var3 10