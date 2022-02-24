scoreboard players set @s ds_cooldown 100
scoreboard players set @s ds_formtime 60
scoreboard players remove @s stamina 18
scoreboard players add @s xp_power 8
scoreboard players add @s xp_stamina 2
attribute @s generic.movement_speed modifier add 0ffbf497-1acc-4ded-92a6-c8662e7af3fc "movement" -0.3 multiply

stopsound @s ambient
stopsound @s block
stopsound @s voice
stopsound @s neutral
stopsound @s player
stopsound @s weather
playsound ambient.underwater.enter player @s ~ ~ ~ 1 1 1
function demonslayer:breathing/water/dead_calm/init_check
execute at @s run function demonslayer:breathing/water/dead_calm/particle_1
