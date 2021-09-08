execute as @s at @s rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1
execute as @s at @s rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1
execute as @s at @s rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1
execute as @s at @s rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1
execute as @s at @s rotated ~ 0 if block ^ ^ ^0.2 #movable if block ^ ^1.3 ^.1 #movable run tp @s ^ ^ ^0.1
execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~

particle dripping_water ~ ~ ~ 0.1 0.25 0.1 0.1 10 normal
function demonslayer:breathing/water/damage
tag @s add immune
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 at @e[nbt={HurtTime:0s},dx=-5,dy=-6,dz=-5,tag=!immune] run particle sweep_attack ~ ~1.5 ~
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 as @e[nbt={HurtTime:0s},dx=-5,dy=-6,dz=-5,tag=!immune] run playsound entity.player.attack.sweep player @a ~ ~ ~
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 as @e[nbt={HurtTime:0s},dx=-5,dy=-6,dz=-5,tag=!immune] run scoreboard players operation @s dmg = #ds:temp var1
execute if score @s[predicate=demonslayer:wisteria] ds_cooldown matches ..10 positioned ~2 ~2 ~2 as @e[nbt={HurtTime:0s},dx=-5,dy=-6,dz=-5,tag=!immune] run scoreboard players set @s ds_wisteria 100
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 if entity @e[nbt={HurtTime:0s},dx=-5,dy=-6,dz=-5,tag=!immune] run scoreboard players add @s ds_cooldown 10
execute if score @s ds_cooldown matches ..10 positioned ~2 ~2 ~2 if entity @e[nbt={HurtTime:0s},dx=-5,dy=-6,dz=-5,tag=!immune] run scoreboard players remove @s stamina 10
tag @s remove immune
execute if score @s ds_formtime matches 5 run function demonslayer:breathing/water/third_form2