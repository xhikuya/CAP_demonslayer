function demonslayer:breathing/sun/dmg
tag @e remove ds_new
execute rotated ~ 0 run summon area_effect_cloud ^ ^-.2 ^2.3 {Tags:["ds_sun_bbss_circle2","ds_proj","ds_new"],Duration:80}
scoreboard players operation @e[tag=ds_new] projowner = @s uuid
scoreboard players operation @e[tag=ds_new] var2 = #ds:temp var1
data modify entity @e[tag=ds_new,limit=1] Rotation set from entity @s Rotation