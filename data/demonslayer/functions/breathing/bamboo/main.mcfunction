tag @s add ds_this
execute positioned ^ ^ ^2.6 positioned ~.2 ~.2 ~.2 unless entity @e[dx=-.4,dy=-.4,dz=-.4,tag=!ds_hitbox,type=!#core:non_living,tag=!ds_this] at @s run function demonslayer:breathing/bamboo/hitbox

function demonslayer:breathing/bamboo/moving_back
tag @s remove ds_this
