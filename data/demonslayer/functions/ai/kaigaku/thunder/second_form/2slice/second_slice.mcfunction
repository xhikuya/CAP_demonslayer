
execute rotated ~ ~-80 positioned ~ ~2 ~ if score @s ds_formtime matches 12 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~-70 positioned ~ ~2 ~ if score @s ds_formtime matches 12 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~-60 positioned ~ ~2 ~ if score @s ds_formtime matches 12 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~-50 positioned ~ ~2 ~ if score @s ds_formtime matches 12 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~-40 positioned ~ ~2 ~ if score @s ds_formtime matches 11 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~-30 positioned ~ ~2 ~ if score @s ds_formtime matches 11 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~-20 positioned ~ ~2 ~ if score @s ds_formtime matches 11 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~-10 positioned ~ ~2 ~ if score @s ds_formtime matches 11 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~ positioned ~ ~2 ~ if score @s ds_formtime matches 11 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~ positioned ~ ~1.5 ~ if score @s ds_formtime matches 11 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~10 positioned ~ ~1.5 ~ if score @s ds_formtime matches 11 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~20 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~30 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~40 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~50 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~60 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg
execute rotated ~ ~70 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/second_form/2slice/dmg


execute if score @s ds_formtime matches 10 run playsound entity.lightning_bolt.thunder player @a
playsound entity.player.attack.sweep player @a
