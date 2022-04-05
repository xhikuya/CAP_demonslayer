attribute @s generic.movement_speed modifier add b607e8d0-bd75-4930-9475-17f935eeb919 "second-form" -.3 multiply

execute if score @s ds_formtime matches 13..15 run function demonslayer:breathing/thunder/kaigaku/second_form/1slice/first_slice
execute if score @s ds_formtime matches 10..12 run function demonslayer:breathing/thunder/kaigaku/second_form/2slice/second_slice
execute if score @s ds_formtime matches 8..10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/third_slice
execute if score @s ds_formtime matches 5..7 run function demonslayer:breathing/thunder/kaigaku/second_form/4slice/fourth_slice
execute if score @s ds_formtime matches 2..4 run function demonslayer:breathing/thunder/kaigaku/second_form/5slice/fifth_slice
execute if score @s ds_formtime matches 1..3 run function demonslayer:breathing/thunder/kaigaku/second_form/6slice/sixth_slice
attribute @s[scores={ds_formtime=1}] generic.movement_speed modifier remove b607e8d0-bd75-4930-9475-17f935eeb919
