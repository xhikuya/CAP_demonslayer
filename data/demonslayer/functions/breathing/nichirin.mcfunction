execute unless predicate demonslayer:breathing if predicate core:atked run function demonslayer:breathing/attack
execute positioned ^ ^ ^2.6 positioned ~.3 ~.3 ~.3 unless entity @e[dx=-.6,dy=-.6,dz=-.6,tag=!ds_hitbox,type=!#core:non_living,tag=!ds_this] at @s run function demonslayer:breathing/bamboo/hitbox
execute unless predicate demonslayer:breathing if entity @s[tag=ds_cattack] at @s run function demonslayer:breathing/attack2

execute if predicate demonslayer:1_chance positioned ~ ~1.4 ~ positioned ^ ^ ^.4 run particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0.05 1 normal
execute if predicate demonslayer:1_chance positioned ~ ~1.4 ~ positioned ^ ^ ^.4 run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0.05 1 normal
function demonslayer:breathing/essentials/moving_back