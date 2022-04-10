
execute if score @s ds_formtime matches 10 facing entity @e[tag=ds_target,limit=1] eyes rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/execute
execute if score @s ds_formtime matches 8 facing entity @e[tag=ds_target,limit=1] eyes rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/third_form/2slice/execute
execute if score @s ds_formtime matches 6 facing entity @e[tag=ds_target,limit=1] eyes rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/third_form/3slice/execute
execute if score @s ds_formtime matches 4 facing entity @e[tag=ds_target,limit=1] eyes rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/third_form/4slice/execute
execute if score @s ds_formtime matches 3 facing entity @e[tag=ds_target,limit=1] eyes rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/third_form/2slice/execute
execute if score @s ds_formtime matches 2 facing entity @e[tag=ds_target,limit=1] eyes rotated ~ 0 run function demonslayer:ai/kaigaku/thunder/third_form/5slice/execute

execute if score @s ds_formtime matches 7..10 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~
execute if score @s ds_formtime matches 1..4 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~
