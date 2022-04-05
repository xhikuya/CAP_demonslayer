execute as @s at @s unless entity @s[x_rotation=-90..-10] rotated ~ 0 if block ^ ^.3 ^.2 #movable if block ^ ^.3 ^.4 #movable if block ^ ^.3 ^.6 #movable if block ^ ^.3 ^.8 #movable anchored eyes if block ^ ^ ^.2 #movable if block ^ ^ ^.4 #movable if block ^ ^ ^.6 #movable if block ^ ^ ^.8 #movable anchored feet run tp @s ^.1 ^ ^0.7
execute as @s at @s if entity @s[x_rotation=-90..-10] if block ^ ^ ^.2 #movable if block ^ ^ ^.4 #movable if block ^ ^ ^.6 #movable if block ^ ^ ^.8 #movable anchored eyes if block ^ ^ ^.2 #movable if block ^ ^ ^.4 #movable if block ^ ^ ^.6 #movable if block ^ ^ ^.8 #movable anchored feet run tp @s ^ ^ ^0.7

execute at @s run particle dust 1 0.816 0 1 ~ ~1 ~ 0 0 0 0.1 10 normal
execute at @s positioned ~.7 ~.7 ~.7 as @e[tag=!immune,type=!#core:non_living,dx=-1.4,dy=-1.4,dz=-1.4] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ .1