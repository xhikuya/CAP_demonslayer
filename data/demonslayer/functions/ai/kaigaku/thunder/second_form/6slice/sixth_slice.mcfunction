execute rotated ~160 0 positioned ~ ~.7 ~ if score @s ds_formtime matches 3 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~150 0 positioned ~ ~.7 ~ if score @s ds_formtime matches 3 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~140 0 positioned ~ ~.7 ~ if score @s ds_formtime matches 3 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~115 0 positioned ~ ~.8 ~ if score @s ds_formtime matches 3 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~120 0 positioned ~ ~.8 ~ if score @s ds_formtime matches 3 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~110 0 positioned ~ ~.9 ~ if score @s ds_formtime matches 3 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~100 0 positioned ~ ~.9 ~ if score @s ds_formtime matches 3 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~90 0 positioned ~ ~1 ~ if score @s ds_formtime matches 2 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~80 0 positioned ~ ~1 ~ if score @s ds_formtime matches 2 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~70 0 positioned ~ ~1.2 ~ if score @s ds_formtime matches 2 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~60 0 positioned ~ ~1.2 ~ if score @s ds_formtime matches 2 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~50 0 positioned ~ ~1.3 ~ if score @s ds_formtime matches 2 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~40 0 positioned ~ ~1.3 ~ if score @s ds_formtime matches 2 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~30 0 positioned ~ ~1.4 ~ if score @s ds_formtime matches 2 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~20 0 positioned ~ ~1.4 ~ if score @s ds_formtime matches 1 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~10 0 positioned ~ ~1.5 ~ if score @s ds_formtime matches 1 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~ 0 positioned ~ ~1.5 ~ if score @s ds_formtime matches 1 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~-10 0 positioned ~ ~1.6 ~ if score @s ds_formtime matches 1 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~-20 0 positioned ~ ~1.6 ~ if score @s ds_formtime matches 1 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~-30 0 positioned ~ ~1.7 ~ if score @s ds_formtime matches 1 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg
execute rotated ~-40 0 positioned ~ ~1.7 ~ if score @s ds_formtime matches 1 run function demonslayer:ai/kaigaku/thunder/second_form/6slice/dmg


execute if score @s ds_formtime matches 1 run playsound entity.lightning_bolt.thunder player @a
playsound entity.player.attack.sweep player @a
