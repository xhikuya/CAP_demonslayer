particle flame ^ ^ ^1.5 0.06 0.06 0.06 0.01 10
particle dust 1 0 0 1.6 ^ ^ ^1.5 0 0 0 0 20
execute at @a[distance=..10] if score @p uuid = @s projowner run tag @p add immune
execute positioned ^ ^ ^1.5 positioned ~-.6 ~-.5 ~-.6 run scoreboard players operation @e[dx=1.4,dy=1,dz=1.4,tag=!immune,type=!#core:non_living,nbt={HurtTime:0s},predicate=!core:dmg] dmg = @s var2
execute positioned ^ ^ ^1.5 positioned ~-.6 ~-.5 ~-.6 if entity @e[dx=1.4,dy=1,dz=1.4,tag=!immune,type=!#core:non_living,nbt={HurtTime:0s},predicate=core:dmg] run playsound entity.player.attack.sweep player @a ~ ~ ~
execute at @a[distance=..10] if score @p uuid = @s projowner run tag @p remove immune