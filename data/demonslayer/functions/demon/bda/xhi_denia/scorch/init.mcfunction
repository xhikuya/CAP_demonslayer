scoreboard players set @s ds_cooldown 100
scoreboard players set @s ds_formtime 40
scoreboard players remove @s stamina 38
attribute @s generic.movement_speed modifier add 0ffbf497-1acc-4ded-92a6-c8662e7af3fc "movement" -0.3 multiply

playsound entity.blaze.shoot player @a ~ ~ ~
function demonslayer:demon/bda/xhi_denia/scorch/init_check
execute at @s run function demonslayer:demon/bda/xhi_denia/scorch/particle_1
