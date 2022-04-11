execute at @s run particle flash ~ ~ ~ 0 0 0 0 2 normal @s
playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1.2
playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1.2
playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1.2
playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1.5
playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1.8
playsound entity.player.attack.weak player @s ~ ~ ~ 1 1.8

execute positioned ~ ~3 ~ run function demonslayer:breathing/water/particle_wheel
function demonslayer:ai/tanjiro/breathing/damage
tag @s add immune
execute rotated ~ 0 positioned ~-3 ~ ~-3 as @e[dx=6,dz=6,dy=7,tag=!immune,scores={dmg=0},predicate=demonslayer:target_slayer] run scoreboard players operation @s dmg = #ds:temp var1

tag @s remove immune
execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~
