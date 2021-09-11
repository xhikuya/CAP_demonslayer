scoreboard players add @s ds_cooldown 40
scoreboard players add @s stamina_cool 40
scoreboard players remove @s stamina 15
scoreboard players add @s xp_def 1
scoreboard players add @s xp_power 1



execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~

execute at @s run particle flash ~ ~ ~ 0 0 0 0 2 force @s
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.8
playsound entity.player.attack.weak player @a ~ ~ ~ 1 1.8


effect give @s slow_falling 2 0 true
execute positioned ~ ~3 ~ run function demonslayer:breathing/water/particle_wheel
function demonslayer:breathing/water/damage
tag @s add immune
execute rotated ~ 0 positioned ~-2 ~-2 ~-2 as @e[dx=4,dz=4,dy=7,tag=!immune] unless score @s dmg matches 1.. run scoreboard players operation @s dmg = #ds:temp var1
execute rotated ~ 0 positioned ~-2 ~-2 ~-2 as @e[dx=4,dz=4,dy=7,tag=!immune] unless score @s dmg matches 1.. run scoreboard players add @s ds_wisteria 50

tag @s remove immune
execute rotated ~ 0 run tp ^ ^1 ^3.5
