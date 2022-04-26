execute as @s at @s rotated ~ 0 if block ^ ^.3 ^.2 #movable if block ^ ^.3 ^.4 #movable if block ^ ^.3 ^.6 #movable if block ^ ^.3 ^.8 #movable anchored eyes if block ^ ^ ^.2 #movable if block ^ ^ ^.4 #movable if block ^ ^ ^.6 #movable if block ^ ^ ^.8 #movable anchored feet run tp @s ^ ^ ^0.7

tag @s add immune
function demonslayer:breathing/sun/dmg
execute as @s at @s positioned ~-.8 ~-1 ~-.8 run scoreboard players operation @e[dx=1.6,dy=2,dz=1.6,tag=!immune] dmg = #ds:temp var1
execute as @s at @s positioned ~-.8 ~-1 ~-.8 if entity @e[dx=1.6,dy=2,dz=1.6,tag=!immune] run playsound entity.player.attack.sweep player @a ~ ~ ~
tag @s remove immune
