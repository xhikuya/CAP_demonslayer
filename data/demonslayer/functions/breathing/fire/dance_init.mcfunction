scoreboard players set @s ds_formtime 0
scoreboard players add @s[type=player] xp_power 1
scoreboard players add @s[type=player] xp_stamina 4
scoreboard players remove @s[type=player] stamina 5
scoreboard players set @s ds_formtime 2


playsound entity.player.attack.sweep player @a ~ ~ ~
playsound entity.player.attack.sweep player @a ~ ~ ~
playsound entity.player.attack.sweep player @a ~ ~ ~
tag @s add immune
function demonslayer:breathing/fire/dmg
execute at @s rotated ~ 0 anchored eyes positioned ^ ^ ^1.7 positioned ~-1 ~-2 ~-1 run scoreboard players operation @e[dx=2,dy=4,dz=2,tag=!immune] dmg = #ds:temp var1


tag @s remove immune