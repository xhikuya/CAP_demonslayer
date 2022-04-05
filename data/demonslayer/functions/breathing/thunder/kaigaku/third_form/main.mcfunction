execute as @s at @s rotated ~ 0 if block ^ ^ ^.5 #airs run tp @s ^ ^ ^.5
execute as @s at @s rotated ~ 0 if block ^ ^ ^.5 #airs run tp @s ^ ^ ^.5
execute as @s at @s rotated ~ 0 if block ^ ^ ^.5 #airs run tp @s ^ ^ ^.5

execute if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/third_form/1slice/execute
execute if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/third_form/2slice/execute
execute if score @s ds_formtime matches 6 run function demonslayer:breathing/thunder/kaigaku/third_form/3slice/execute
execute if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/third_form/4slice/execute
execute if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/third_form/5slice/execute

execute if score @s ds_formtime matches 7..10 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~
execute if score @s ds_formtime matches 1..3 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~
