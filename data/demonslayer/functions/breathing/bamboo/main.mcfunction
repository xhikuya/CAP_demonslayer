tag @s add ds_this
execute positioned ^ ^ ^2.6 positioned ~.3 ~.3 ~.3 unless entity @e[dx=-.6,dy=-.6,dz=-.6,tag=!ds_hitbox,type=!#core:non_living,tag=!ds_this] at @s run function demonslayer:breathing/bamboo/hitbox
execute if entity @s[tag=ds_cattack] run function demonslayer:breathing/bamboo/attack
function demonslayer:breathing/essentials/moving_back
tag @s remove ds_this
