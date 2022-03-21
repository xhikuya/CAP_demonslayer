execute at @e[tag=ds_hitbox,distance=..15] if score @s uuid = @e[limit=1,sort=nearest] projowner run tag @e[sort=nearest,limit=1] add ds_hithis

execute unless entity @e[tag=ds_hithis] run summon chicken ~ ~-2 ~ {Tags:["ds_hitbox","ds_hithis","ds_hitnew"],ActiveEffects:[{Id:11b,Duration:100000,Amplifier:10,ShowParticles:0b},{Id:14b,ShowParticles:0b,Amplifier:0,Duration:1000000}],Team:"ds_collide",Silent:1b,DeathLootTable:"minecraft:empty",IsChickenJockey:1b,NoGravity:1b}
#execute anchored eyes unless entity @e[tag=ds_hitbox] run summon chicken ^ ^ ^1.4 {Tags:["ds_hitbox","ds_hithis"],ActiveEffects:[{Id:11b,Duration:100000,Amplifier:10,ShowParticles:0b}],Team:"ds_collide",Silent:1b,DeathLootTable:"minecraft:empty",IsChickenJockey:1b,NoGravity:1b}
data merge entity @e[tag=ds_hithis,limit=1] {Fire:0s}
execute as @s at @s positioned ~ ~.5 ~ anchored eyes as @e[tag=ds_hithis] run tp @s ^ ^ ^1.4
execute as @s[predicate=core:sprint] at @s positioned ~ ~.5 ~ anchored eyes as @e[tag=ds_hithis] run tp @s ^ ^ ^1.4

#execute as @s at @s unless entity @s[nbt={OnGround:1b}] positioned ~ ~1 ~ anchored eyes as @e[tag=ds_hithis] run tp @s ^ ^ ^1


execute as @e[tag=ds_hitnew] store result score @s projowner run scoreboard players get @e[tag=ds_this,limit=1] uuid
execute as @e[tag=ds_hithis] run scoreboard players set @s var1 0

execute if predicate core:atked_full if entity @e[tag=ds_hithis,nbt={HurtTime:10s}] run function demonslayer:breathing/bamboo/attack

tag @e[tag=ds_hithis] remove ds_hithis
tag @e[tag=ds_hitnew] remove ds_hitnew