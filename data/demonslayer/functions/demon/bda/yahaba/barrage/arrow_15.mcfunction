tag @e remove ds_new
execute positioned ~ ~.5 ~ positioned ^ ^ ^1 run summon area_effect_cloud ~ ~ ~ {Tags:["ds_yahaba_arrow","projectile","ds_new","ds_proj"],Duration:1000000,CustomName:'{"text":"hi"}'}
function demonslayer:demon/bda/yahaba/dmg
scoreboard players operation @e[tag=ds_new] var2 = #ds:temp var1
scoreboard players operation @e[tag=ds_new] projowner = @s uuid

data modify entity @e[tag=ds_new,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=ds_new,limit=1] at @s run tp @s ~ ~ ~ ~ ~-8
scoreboard players set @e[tag=ds_new,limit=1] var3 0
scoreboard players set @e[tag=ds_new,limit=1] var4 1

playsound entity.arrow.hit_player player @a