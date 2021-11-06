execute if score @s ds_formtime matches 10 run function demonslayer:ai/tanjiro/breathing/third/maon
execute if score @s ds_formtime matches 18.. run function demonslayer:ai/tanjiro/breathing/third/slash
execute if score @s ds_formtime matches 9..14 run function demonslayer:ai/tanjiro/breathing/third/slash
#execute if score @s ds_formtime matches 1 run function demonslayer:ai/tanjiro/breathing/third/maon

execute if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute if entity @s[scores={dmg=1..}] run playsound item.shield.break player @a ~ ~ ~
particle cloud ~ ~ ~ 0.2 0.25 0.2 0.1 15 normal
particle dripping_water ~ ~ ~ 0.2 0.25 0.2 0.1 20 normal

