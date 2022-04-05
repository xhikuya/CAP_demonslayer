effect give @s slow_falling 1 0 true
execute as @s[x_rotation=-90..-2] at @s if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute as @s[x_rotation=-90..-2] at @s if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute as @s[x_rotation=-90..-2] at @s if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute as @s[x_rotation=-90..-2] at @s if block ^ ^ ^0.1 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1

execute unless entity @s[x_rotation=-90..-2] as @s at @s if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute unless entity @s[x_rotation=-90..-2] as @s at @s if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute unless entity @s[x_rotation=-90..-2] as @s at @s if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute unless entity @s[x_rotation=-90..-2] as @s at @s if block ^ ^ ^0.1 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1

execute unless entity @s[x_rotation=-90..-2] as @s at @s unless block ^ ^ ^0.2 #movable rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute unless entity @s[x_rotation=-90..-2] as @s at @s unless block ^ ^ ^0.2 #movable rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute unless entity @s[x_rotation=-90..-2] as @s at @s unless block ^ ^ ^0.2 #movable rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.2 #movable run tp @s ^ ^ ^0.2
execute unless entity @s[x_rotation=-90..-2] as @s at @s unless block ^ ^ ^0.1 #movable rotated ~ 0 if block ^ ^ ^0.1 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1


attribute @s generic.movement_speed modifier add b221a289-5d7f-4903-9b4b-cd7baa5719d9 "Water 3rd form" -0.2 multiply

particle cloud ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
particle dripping_water ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 1 normal

function demonslayer:breathing/water/damage
tag @s add immune
execute if score @s ds_cooldown matches ..10 positioned ~1 ~1 ~1 if entity @e[nbt={HurtTime:0s},dx=-2,dy=-3,dz=-2,tag=!immune] run scoreboard players remove @s stamina 10
execute if score @s ds_cooldown matches ..10 positioned ~1 ~1 ~1 at @e[nbt={HurtTime:0s},dx=-2,dy=-3,dz=-2,tag=!immune] run particle sweep_attack ~ ~1.5 ~
execute if score @s ds_cooldown matches ..10 positioned ~1 ~1 ~1 as @e[nbt={HurtTime:0s},dx=-2,dy=-3,dz=-2,tag=!immune] run playsound entity.player.attack.sweep player @a ~ ~ ~
execute if score @s ds_cooldown matches ..10 positioned ~1 ~1 ~1 as @e[nbt={HurtTime:0s},dx=-2,dy=-3,dz=-2,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1
execute if score @s ds_cooldown matches ..10 positioned ~1 ~1 ~1 as @e[dx=-2,dy=-3,dz=-2,tag=!immune,tag=projectile] run function demonslayer:breathing/water/counter

execute if score @s ds_cooldown matches ..10 positioned ~1 ~1 ~1 if entity @e[nbt={HurtTime:0s},dx=-2,dy=-3,dz=-2,tag=!immune] run scoreboard players add @s ds_cooldown 10

tag @s remove immune
execute if score @s ds_formtime matches 5 run function demonslayer:breathing/water/5th/end