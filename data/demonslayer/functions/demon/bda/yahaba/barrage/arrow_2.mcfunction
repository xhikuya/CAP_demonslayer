tag @e remove ds_new
execute positioned ~ ~1.5 ~ positioned ^ ^ ^2 run summon area_effect_cloud ~ ~ ~ {Tags:["ds_yahaba_arrow","projectile","ds_new","ds_proj"],Duration:1000000,CustomName:'{"text":"hi"}'}
function demonslayer:demon/bda/yahaba/dmg
scoreboard players operation @e[tag=ds_new] var2 = #ds:temp var1
scoreboard players operation @e[tag=ds_new] projowner = @s uuid

data modify entity @e[tag=ds_new,limit=1] Rotation set from entity @s Rotation
scoreboard players set @e[tag=ds_new,limit=1] var1 30
scoreboard players set @e[tag=ds_new,limit=1] var3 0
scoreboard players set @e[tag=ds_new,limit=1] var4 2

playsound entity.arrow.hit_player player @a