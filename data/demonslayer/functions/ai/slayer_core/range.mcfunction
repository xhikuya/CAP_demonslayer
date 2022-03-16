tag @s remove melee
tag @s remove closerange
tag @s remove midrange
tag @s remove longrange
execute if entity @e[distance=..4,tag=ds_target] run tag @s add melee
execute if entity @s[tag=!melee] if entity @e[distance=..6,tag=ds_target] run tag @s add closerange
execute if entity @s[tag=!closerange,tag=!melee] if entity @e[distance=..15,tag=ds_target] run tag @s add midrange
execute if entity @s[tag=!melee,tag=!closerange,tag=!midrange] if entity @e[distance=16..20,tag=ds_target] run tag @s add longrange

execute if entity @a[tag=ds_target,gamemode=creative] run tag @s remove melee
execute if entity @a[tag=ds_target,gamemode=creative] run tag @s remove closerange
execute if entity @a[tag=ds_target,gamemode=creative] run tag @s remove midrange
execute if entity @a[tag=ds_target,gamemode=creative] run tag @s remove longrange
