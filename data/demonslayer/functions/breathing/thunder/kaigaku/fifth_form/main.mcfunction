execute rotated ~ 80 positioned ~ ~1.5 ~ if score @s ds_formtime matches 5 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ 70 positioned ~ ~1.5 ~ if score @s ds_formtime matches 5 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ 60 positioned ~ ~1.5 ~ if score @s ds_formtime matches 5 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ 50 positioned ~ ~1.5 ~ if score @s ds_formtime matches 5 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ 40 positioned ~ ~1.5 ~ if score @s ds_formtime matches 5 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ 30 positioned ~ ~1.5 ~ if score @s ds_formtime matches 5 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ 20 positioned ~ ~1.5 ~ if score @s ds_formtime matches 5 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ 10 positioned ~ ~2 ~ if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ ~ positioned ~ ~2 ~ if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -10 positioned ~ ~2 ~ if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -20 positioned ~ ~2 ~ if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -30 positioned ~ ~2 ~ if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -40 positioned ~ ~2 ~ if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -50 positioned ~ ~1.5 ~ if score @s ds_formtime matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -60 positioned ~ ~1.5 ~ if score @s ds_formtime matches 3 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -70 positioned ~ ~1.5 ~ if score @s ds_formtime matches 3 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -80 positioned ~ ~1.5 ~ if score @s ds_formtime matches 3 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -90 positioned ~ ~1.5 ~ if score @s ds_formtime matches 3 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -100 positioned ~ ~1.5 ~ if score @s ds_formtime matches 3 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -110 positioned ~ ~1.5 ~ if score @s ds_formtime matches 3 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -120 positioned ~ ~1.5 ~ if score @s ds_formtime matches 3 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -130 positioned ~ ~1.5 ~ if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -140 positioned ~ ~1.5 ~ if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -150 positioned ~ ~1.5 ~ if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -160 positioned ~ ~1.5 ~ if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -170 positioned ~ ~1.5 ~ if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -180 positioned ~ ~1.5 ~ if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute rotated ~ -190 positioned ~ ~1.5 ~ if score @s ds_formtime matches 2 run function demonslayer:breathing/thunder/kaigaku/fifth_form/particle
execute if score @s ds_formtime matches 3..5 run playsound entity.lightning_bolt.thunder player @a
execute if score @s ds_formtime matches 1..5 run playsound entity.player.attack.sweep player @a
attribute @s generic.movement_speed modifier add b607e8d0-bd75-4930-9475-17f935eeb919 "second-form" -.5 multiply
