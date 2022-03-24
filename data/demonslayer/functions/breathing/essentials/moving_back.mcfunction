#execute unless data entity @s {Motion:[0.0d,0.0d,0.0d]} run say hi
execute store result score @s ds_motx run data get entity @s Pos[0] 100
execute store result score @s ds_motz run data get entity @s Pos[2] 100
execute if score @s ds_motx2 > @s ds_motx run tag @s add ds_move-x
execute if score @s ds_motx2 < @s ds_motx run tag @s add ds_move+x
execute if score @s ds_motz2 > @s ds_motz run tag @s add ds_move-z
execute if score @s ds_motz2 < @s ds_motz run tag @s add ds_move+z
scoreboard players operation @s ds_motx2 = @s ds_motx
scoreboard players operation @s ds_motz2 = @s ds_motz


##south
execute as @s[y_rotation=-45..45,tag=ds_move-z] if predicate core:jump run function demonslayer:breathing/essentials/backstep
##east
execute as @s[y_rotation=-135..-45,tag=ds_move-x] if predicate core:jump run function demonslayer:breathing/essentials/backstep
##north
execute as @s[y_rotation=-180..-135,tag=ds_move+z] if predicate core:jump run function demonslayer:breathing/essentials/backstep
execute as @s[y_rotation=135..180,tag=ds_move+z] if predicate core:jump run function demonslayer:breathing/essentials/backstep
##west
execute as @s[y_rotation=45..135,tag=ds_move+x] if predicate core:jump run function demonslayer:breathing/essentials/backstep


tag @s remove ds_move-x
tag @s remove ds_move-z
tag @s remove ds_move+z
tag @s remove ds_move+x



