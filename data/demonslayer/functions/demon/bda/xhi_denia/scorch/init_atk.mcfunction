execute if entity @s[nbt={HurtTime:0s}] run particle sweep_attack ~ ~1.5 ~
execute if entity @s[nbt={HurtTime:0s}] run playsound entity.player.attack.sweep player @a ~ ~ ~
execute if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1

execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3
execute as @s at @s facing entity @e[tag=immune,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^ ^-0.3 #movable if block ^ ^1.3 ^-.3 #movable run tp @s ^ ^ ^-0.3

