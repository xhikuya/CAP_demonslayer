function demonslayer:ai/tanjiro/breathing/damage
tag @s add immune
execute rotated ~ 0 positioned ~-2 ~-1 ~-2 as @e[dx=4,dz=4,dy=2,tag=!immune] if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune
execute positioned ~-2 ~-1 ~-2 at @e[nbt={HurtTime:0s},dx=4,dy=2,dz=4,tag=!immune] run particle sweep_attack ~ ~1.5 ~
execute positioned ~-2 ~-1 ~-2 as @e[nbt={HurtTime:0s},dx=4,dy=2,dz=4,tag=!immune] run playsound entity.player.attack.sweep player @a ~ ~ ~