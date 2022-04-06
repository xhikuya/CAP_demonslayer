execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{ThunderBreathing:1b,CustomModelData:1}

execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 8.. run scoreboard players add @s[scores={ds_formtime=0}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=4..,stat_control=12..}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=2..,stat_control=5..7}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=3..,stat_control=8..11}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=4..}] ds_thunderform 1

execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 1 run tellraw @s {"text": "First Form: Thunderclap And Flash","color": "yellow"}
execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 2 run tellraw @s {"text": "First Form: Thunderclap And Flash - Sixfold","color": "yellow"}
execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 3 run tellraw @s {"text": "First Form: Thunderclap And Flash - Eightfold","color": "yellow"}

execute if score @s ds_swap matches 8.. run scoreboard players set @s ds_swap 1
#>actual moves
execute if predicate core:atked at @s run function demonslayer:breathing/attack
execute positioned ^ ^ ^2.6 positioned ~.3 ~.3 ~.3 unless entity @e[dx=-.6,dy=-.6,dz=-.6,tag=!ds_hitbox,type=!#core:non_living,tag=!ds_this] at @s run function demonslayer:breathing/bamboo/hitbox
execute if entity @s[tag=ds_cattack] at @s run function demonslayer:breathing/attack2

execute if predicate core:click if score @s[scores={stamina=..29,ds_cooldown=0}] ds_thunderform matches 1 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=30..,ds_cooldown=0}] ds_thunderform matches 1 run function demonslayer:breathing/thunder/zenitsu/original/thunderclap_init
execute if predicate core:click if score @s[scores={stamina=..59,ds_cooldown=0}] ds_thunderform matches 2 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=60..,ds_cooldown=0}] ds_thunderform matches 2 run function demonslayer:breathing/thunder/zenitsu/sixfold_init
execute if predicate core:click if score @s[scores={stamina=..100,ds_cooldown=0}] ds_thunderform matches 3 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=101..,ds_cooldown=0}] ds_thunderform matches 3 run function demonslayer:breathing/thunder/zenitsu/eightfold_init

#>Forms
execute if score @s[scores={ds_thunderform=1}] ds_formtime matches 1.. run function demonslayer:breathing/thunder/zenitsu/original/main
execute if score @s[scores={ds_thunderform=2}] ds_formtime matches 1.. run function demonslayer:breathing/thunder/zenitsu/sixfold_main
execute if score @s[scores={ds_thunderform=3}] ds_formtime matches 1.. run function demonslayer:breathing/thunder/zenitsu/eightfold_main


