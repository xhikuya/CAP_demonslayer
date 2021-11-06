tag @s add immune
function demonslayer:breathing/water/damage
playsound entity.player.attack.sweep player @a ~ ~ ~
execute at @s rotated ~-50 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~-50 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~-40 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~-40 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~-30 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~-30 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~-20 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~-20 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~-10 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~-10 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~ ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~ ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~10 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~10 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~20 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~20 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~30 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~30 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~40 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~40 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50
execute at @s rotated ~50 ~ anchored eyes positioned ^ ^ ^2 run scoreboard players operation @e[dx=1,dy=3,dz=1,tag=!immune] dmg = #ds:temp var1
execute at @s[predicate=demonslayer:wisteria] rotated ~50 ~ anchored eyes positioned ^ ^-2 ^2 run scoreboard players add @e[dx=1,dy=3,dz=1,tag=!immune] ds_wisteria 50

tag @s remove immune
scoreboard players add @s[type=player] xp_power 1
scoreboard players set @s[type=player] ds_formtime 0
scoreboard players add @s[type=player] xp_stamina 6
execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~
