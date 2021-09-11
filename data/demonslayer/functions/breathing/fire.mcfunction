execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{FireBreathing:1b}

execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_fireform 1
scoreboard players set @s[scores={ds_fireform=4..,stat_control=12..}] ds_fireform 1
scoreboard players set @s[scores={ds_fireform=2..,stat_control=5..7}] ds_fireform 1
scoreboard players set @s[scores={ds_fireform=3..,stat_control=8..11}] ds_fireform 1

execute if score @s[scores={ds_swap=6..}] ds_fireform matches 1 run tellraw @s "Dance"
execute if score @s[scores={ds_swap=6..}] ds_fireform matches 2 run tellraw @s "Clear Blue Sky"
execute if score @s[scores={ds_swap=6..}] ds_fireform matches 3 run tellraw @s "Raging Sun"

execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#>actual moves
execute if predicate core:atked run function demonslayer:breathing/fire/slash

execute if predicate core:click if score @s[scores={stamina=..2,ds_cooldown=0,ds_formtime=0}] ds_fireform matches 1 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=3..,ds_cooldown=0,ds_formtime=0}] ds_fireform matches 1 run function demonslayer:breathing/fire/dance_init
execute if predicate core:click if score @s[scores={stamina=..10,ds_cooldown=0}] ds_fireform matches 2 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=11..,ds_cooldown=0}] ds_fireform matches 2 run function demonslayer:breathing/fire/blue_sky/init
execute as @s[scores={ds_fireform=1,ds_formtime=1..}] at @s run function demonslayer:breathing/fire/dance

