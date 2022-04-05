scoreboard players set @s ds_formtime 0
scoreboard players set @s ds_cooldown 70

playsound entity.generic.splash player @a ~ ~1 ~ 1 1.1 1
playsound minecraft:entity.player.splash.high_speed player @a ~ ~1 ~ 0.2 1.1 0
playsound minecraft:entity.dolphin.splash player @a ~ ~1 ~ 1 1.1 1
execute rotated ~ 0 run particle cloud ^ ^.5 ^1 0.5 0 0.5 0.4 200 normal


tag @s add immune
function demonslayer:breathing/water/damage
execute positioned ~2 ~1 ~2 as @e[type=!#core:non_living,tag=!immune,tag=!ds_hitbox,dx=-4,dy=-2,dz=-4] run scoreboard players operation @s dmg = #ds:temp var1
effect clear @s slow_falling
tag @s remove immune