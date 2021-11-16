execute at @s if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute at @s if entity @s[predicate=core:dmg] run playsound item.shield.break player @a ~ ~ ~

function demonslayer:breathing/water/damage
tag @s add immune
execute if score @s ds_cooldown matches ..70 positioned ~-3 ~-1 ~-3 at @e[dx=6,dy=6,dz=6,tag=!immune,tag=!projectile,nbt={HurtTime:0s},scores={ds_formtime=1..}] run particle sweep_attack ~ ~1.5 ~
execute if score @s ds_cooldown matches ..70 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=6,dz=6,tag=!immune,tag=!projectile,nbt={HurtTime:0s},scores={ds_formtime=1..}] run playsound entity.player.attack.sweep player @a ~ ~ ~

execute if score @s ds_cooldown matches ..70 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=6,dz=6,tag=projectile] run function demonslayer:breathing/water/counter
execute if score @s ds_cooldown matches ..70 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=6,dz=6,tag=!immune,tag=!projectile,nbt={HurtTime:0s},scores={ds_formtime=1..}] run scoreboard players operation @s dmg = #ds:temp var1
execute if score @s ds_cooldown matches ..70 positioned ~-3 ~-1 ~-3 if entity @e[dx=6,dy=6,dz=6,tag=!immune,tag=!projectile,nbt={HurtTime:0s},scores={ds_formtime=1..}] run scoreboard players add @s ds_cooldown 10

execute if score @s ds_formtime matches 6 run attribute @s generic.movement_speed modifier remove 0ffbf497-1acc-4ded-92a6-c8662e7af3fc
tag @s remove immune
execute if score @s ds_formtime matches 39 run function demonslayer:breathing/water/dead_calm/particle_2
execute if score @s ds_formtime matches 38 run function demonslayer:breathing/water/dead_calm/particle_3
execute if score @s ds_formtime matches 37 run function demonslayer:breathing/water/dead_calm/particle_4
execute if score @s ds_formtime matches 36 run function demonslayer:breathing/water/dead_calm/particle_5
execute if score @s ds_formtime matches 35 run function demonslayer:breathing/water/dead_calm/particle_6
execute if score @s ds_formtime matches 35..39 run function demonslayer:breathing/water/dead_calm/init_check
