effect give @s[scores={ds_formtime=6..},nbt={OnGround:1b}] slowness 1 255 true
execute if block ~ ~ ~ water if block ~ ~1 ~ water run scoreboard players set @s ds_cooldown 60
execute if block ~ ~ ~ water if block ~ ~1 ~ water run scoreboard players set @s ds_formtime 0

execute if score @s[nbt={OnGround:0b}] ds_formtime matches 6.. at @s unless block ~ ~-3 ~ #airs run effect give @s slow_falling 1 2 true

execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=137..147}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 131..136 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=120..130}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 114..119 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=104..114}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 98..103 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=87..97}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 81..86 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=70..80}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 64..69 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=53..63}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 47..52 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=41..51}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 35..40 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
execute if entity @s[nbt={OnGround:0b},scores={ds_formtime=24..34}] run scoreboard players add @s ds_formtime 1
execute if score @s ds_formtime matches 18..23 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_boom
