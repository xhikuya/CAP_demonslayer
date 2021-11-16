execute store result score @s uuid run data get entity @s UUID[0] 1

execute if entity @s[tag=projectile] run tag @s remove hit_check
execute if entity @s[tag=ds_this] run tag @s remove hit_check
execute unless score @s[tag=hit_check] uuid = @e[tag=ds_this,limit=1] projowner run scoreboard players operation @e[tag=ds_this,limit=1] var3 = @s uuid

execute if score @s uuid = @e[tag=ds_this,limit=1] var3 run scoreboard players operation @s ai_dmg = @e[tag=ds_this] var2


execute as @e[tag=ds_this] unless score @s var3 matches 0 run function demonslayer:demon/bda/yahaba/projectile/arrow_atk

tag @s remove hit_check
