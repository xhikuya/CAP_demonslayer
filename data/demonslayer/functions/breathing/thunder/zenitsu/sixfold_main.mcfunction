effect give @s[scores={ds_formtime=6..},nbt={OnGround:1b}] slowness 1 255 true
execute if score @s[nbt={OnGround:0b}] ds_formtime matches 6.. at @s unless block ~ ~-3 ~ #airs run effect give @s slow_falling 1 2 true
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=66..67}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 60..65 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=53..54}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 46..52 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=37..38}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 30..36 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=22..23}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 12..21 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=10..11}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 5..9 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=3..4}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 1..2 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if score @s ds_formtime matches 1..2 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if score @s ds_formtime matches 1..2 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
