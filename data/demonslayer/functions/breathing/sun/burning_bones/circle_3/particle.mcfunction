particle flame ^ ^ ^2.5 0.05 0.05 0.05 0.01 20
particle dust 1 0 0 1.6 ^ ^ ^2.5 0 0 0 0 20
particle firework ^ ^ ^2.5 0.05 0.05 0.05 0.01 20
execute at @a[distance=..10] if score @p uuid = @s projowner run tag @p add immune
execute positioned ^ ^ ^2.5 positioned ~-.8 ~-.5 ~-.8 run scoreboard players operation @e[dx=1.6,dy=1,dz=1.6,tag=!immune,type=!#core:non_living,nbt={HurtTime:0s},predicate=!core:dmg] dmg = @s var2
execute positioned ^ ^ ^2.5 positioned ~-.8 ~-.5 ~-.8 if entity @e[dx=1.6,dy=1,dz=1.6,tag=!immune,type=!#core:non_living,nbt={HurtTime:0s},predicate=core:dmg] run playsound entity.player.attack.sweep player @a ~ ~ ~
execute at @a[distance=..10] if score @p uuid = @s projowner run tag @p remove immune