execute rotated ~-160 0 positioned ~ ~.7 ~ if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-150 0 positioned ~ ~.8 ~ if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-140 0 positioned ~ ~.9 ~ if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-115 0 positioned ~ ~1 ~ if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-120 0 positioned ~ ~1.1 ~ if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-110 0 positioned ~ ~1.2 ~ if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-100 0 positioned ~ ~1.3 ~ if score @s ds_formtime matches 10 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-90 0 positioned ~ ~1.4 ~ if score @s ds_formtime matches 9 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-80 0 positioned ~ ~1.5 ~ if score @s ds_formtime matches 9 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-70 0 positioned ~ ~1.6 ~ if score @s ds_formtime matches 9 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-60 0 positioned ~ ~1.7 ~ if score @s ds_formtime matches 9 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-50 0 positioned ~ ~1.8 ~ if score @s ds_formtime matches 9 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-40 0 positioned ~ ~1.9 ~ if score @s ds_formtime matches 9 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-30 0 positioned ~ ~2 ~ if score @s ds_formtime matches 9 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-20 0 positioned ~ ~2 ~ if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~-10 0 positioned ~ ~2 ~ if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~ 0 positioned ~ ~2 ~ if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~10 0 positioned ~ ~2 ~ if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~20 0 positioned ~ ~2 ~ if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~30 0 positioned ~ ~2 ~ if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg
execute rotated ~40 0 positioned ~ ~2 ~ if score @s ds_formtime matches 8 run function demonslayer:breathing/thunder/kaigaku/second_form/3slice/dmg


execute if score @s ds_formtime matches 8 run playsound entity.lightning_bolt.thunder player @a
playsound entity.player.attack.sweep player @a
