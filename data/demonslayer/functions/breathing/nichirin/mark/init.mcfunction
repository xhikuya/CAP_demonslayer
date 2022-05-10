effect give @a[distance=.2..10] blindness 3 0 true
effect give @a[distance=.2..10] slowness 3 1 true
scoreboard players add @a[distance=.2..10] ds_cooldown 50
effect give @s blindness 2 0 true
effect give @s slowness 1 0 true
effect give @s strength 7 4 false
effect give @s haste 7 0 true
effect give @s speed 7 2 true

title @a[distance=..10] times 0 40 2
title @a[distance=..10] title {"text": "Whats so fun about it?","color": "red"}
title @a[distance=..10] subtitle {"text": "Whats so enjoyable?","color": "red"}
execute at @s as @a[distance=..10] at @s run playsound entity.generic.explode player @s ~ ~ ~
execute at @s as @a[distance=..10] at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~
execute at @s as @a[distance=..10] at @s run playsound block.enchantment_table.use player @s ~ ~ ~
scoreboard players add @s mark_time 200
scoreboard players enable @s demonslayer_mark