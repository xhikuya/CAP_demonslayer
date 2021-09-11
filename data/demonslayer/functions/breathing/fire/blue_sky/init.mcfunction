scoreboard players set @s ds_formtime 0
scoreboard players add @s xp_power 1
scoreboard players add @s xp_stamina 3
scoreboard players remove @s stamina 15
scoreboard players set @s ds_cooldown 40

playsound entity.player.attack.sweep player @a ~ ~ ~
playsound entity.player.attack.sweep player @a ~ ~ ~

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.8

execute rotated ~ 0 positioned ~ ~1.2 ~ run function demonslayer:breathing/fire/blue_sky/particle
function demonslayer:breathing/fire/dmg
tag @s add immune
execute positioned ~-3 ~1 ~-3 run scoreboard players operation @e[dx=6,dy=1.4,dz=6,tag=!immune] dmg = #ds:temp var1
tag @s remove immune

execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~
