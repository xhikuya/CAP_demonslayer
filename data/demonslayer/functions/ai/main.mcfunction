execute if entity @s[tag=ds_tanjiro] if entity @a[distance=..80] run function demonslayer:ai/tanjiro/tick
execute if entity @s[tag=ds_shinobu] at @s if entity @a[distance=..80] run function demonslayer:ai/shinobu/tick
execute if entity @s[tag=ds_kaigaku,tag=ds_slayer] at @s if entity @a[distance=..80] run function demonslayer:ai/kaigaku/tick
execute if entity @s[tag=ds_kaigaku,tag=ds_demon] at @s if entity @a[distance=..80] run function demonslayer:ai/kaigaku/demon

execute if entity @s[tag=ds_training] at @s if entity @a[distance=..30] run function demonslayer:ai/training/tick
execute if entity @s[tag=ds_demon,tag=!ds_kaigaku] at @s if entity @a[distance=..80] run function demonslayer:ai/demon/tick
