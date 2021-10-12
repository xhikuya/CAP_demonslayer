execute as @s at @s rotated ~ 0 if block ^ ^ ^0.4 #movable if block ^ ^1.3 ^.4 #movable run tp @s ^ ^ ^0.43
execute as @s at @s rotated ~ 0 if block ^ ^ ^0.4 #movable if block ^ ^1.3 ^.4 #movable run tp @s ^ ^ ^0.43

attribute @s generic.movement_speed modifier add b221a289-5d7f-4903-9b4b-cd7baa5719d9 "Water 3rd form" -0.2 multiply
execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~
particle cloud ~ ~ ~ 0.2 0.25 0.2 0.1 15 normal
particle dripping_water ~ ~ ~ 0.2 0.25 0.2 0.1 20 normal
function demonslayer:breathing/water/damage
scoreboard players set #ds:temp var2 3
scoreboard players operation #ds:temp var1 /= #ds:temp var2

tag @s add immune
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 if entity @e[nbt={HurtTime:0s},dx=-4,dy=-5,dz=-4,tag=!immune] run scoreboard players remove @s stamina 10
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 at @e[nbt={HurtTime:0s},dx=-4,dy=-5,dz=-4,tag=!immune] run particle sweep_attack ~ ~1.5 ~
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 as @e[nbt={HurtTime:0s},dx=-4,dy=-5,dz=-4,tag=!immune] run playsound entity.player.attack.sweep player @a ~ ~ ~
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 as @e[nbt={HurtTime:0s},dx=-4,dy=-5,dz=-4,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1
execute if score @s[predicate=demonslayer:wisteria] ds_cooldown matches ..10 positioned ~2 ~2 ~2 as @e[nbt={HurtTime:0s},dx=-4,dy=-5,dz=-4,tag=!immune] run scoreboard players set @s ds_wisteria 100
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 if entity @e[nbt={HurtTime:0s},dx=-4,dy=-5,dz=-4,tag=!immune] run scoreboard players add @s ds_cooldown 13

tag @s remove immune
execute if score @s ds_formtime matches 5 run function demonslayer:breathing/water/third_form2