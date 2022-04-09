tag @s add ds_this
function demonslayer:breathing/essentials/hitbox
execute if entity @s[tag=ds_cattack] run function demonslayer:breathing/bamboo/attack
function demonslayer:breathing/essentials/moving_back
tag @s remove ds_this
