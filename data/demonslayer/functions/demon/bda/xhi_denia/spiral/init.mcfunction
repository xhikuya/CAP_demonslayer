scoreboard players add @s ds_cooldown 100
scoreboard players remove @s stamina 60
scoreboard players add @s ds_formtime 20

tag @e remove ds_new
execute anchored eyes positioned ^ ^ ^3 run summon area_effect_cloud ~ ~ ~ {Tags:["ds_denia_spiral","pojectile","ds_new","ds_proj"],Duration:1000000}
function demonslayer:demon/bda/xhi_denia/spiral/dmg
scoreboard players operation @e[tag=ds_new] var2 = #ds:temp var1
execute store result score @e[tag=ds_new] projowner run scoreboard players get @s uuid

data modify entity @e[tag=ds_new,limit=1] Rotation[0] set from entity @s Rotation[0]
attribute @s generic.movement_speed modifier add 42ceeca4-78f8-40d6-9f66-a7115920339a "speed" -0.8 multiply