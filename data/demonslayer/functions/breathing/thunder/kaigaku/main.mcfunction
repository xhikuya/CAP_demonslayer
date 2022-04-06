execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{ThunderBreathing:1b,CustomModelData:1}

execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 8.. run scoreboard players add @s[scores={ds_formtime=0}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=5..,stat_control=..10}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=4..,stat_control=..8}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=3}] ds_thunderform 4
scoreboard players set @s[scores={ds_thunderform=2..,stat_control=..4}] ds_thunderform 1
scoreboard players set @s[scores={ds_thunderform=5..}] ds_thunderform 1

execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 1 run tellraw @s {"text": "Second Form: Rice Spirit","color": "yellow"}
execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 2 run tellraw @s {"text": "Third Form: Thunder Swarm","color": "yellow"}
execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 3 run tellraw @s {"text": "Fourth Form: Distance Thunder","color": "yellow"}
execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 4 run tellraw @s {"text": "Fifth Form: Heat Lightning","color": "yellow"}
execute if score @s[scores={ds_swap=8..}] ds_thunderform matches 5 run tellraw @s {"text": "Sixth Form: Rumble And Flash","color": "yellow"}

execute if score @s ds_swap matches 8.. run scoreboard players set @s ds_swap 1
#>actual moves
execute if predicate core:atked at @s run function demonslayer:breathing/attack
execute positioned ^ ^ ^2.6 positioned ~.3 ~.3 ~.3 unless entity @e[dx=-.6,dy=-.6,dz=-.6,tag=!ds_hitbox,type=!#core:non_living,tag=!ds_this] at @s run function demonslayer:breathing/bamboo/hitbox
execute if entity @s[tag=ds_cattack] at @s run function demonslayer:breathing/attack2

#>Second Form
    execute if predicate core:click if score @s[scores={stamina=..19,ds_cooldown=0}] ds_thunderform matches 1 run tellraw @s "Too Tired"
    execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=0}] ds_thunderform matches 1 run function demonslayer:breathing/thunder/kaigaku/second_form/init
#>Third Form
    execute if predicate core:click if score @s[scores={stamina=..16,ds_cooldown=0}] ds_thunderform matches 2 run tellraw @s "Too Tired"
    execute if predicate core:click if score @s[scores={stamina=17..,ds_cooldown=0}] ds_thunderform matches 2 run function demonslayer:breathing/thunder/kaigaku/third_form/init
#>Fourth Form
    execute if predicate core:click if score @s[scores={stamina=..24,ds_cooldown=0}] ds_thunderform matches 3 run tellraw @s "Too Tired"
    execute if predicate core:click if score @s[scores={stamina=25..,ds_cooldown=0}] ds_thunderform matches 3 run function demonslayer:breathing/thunder/kaigaku/fourth_form/init
#>Fifth Form
    execute if predicate core:click if score @s[scores={stamina=..19,ds_cooldown=0}] ds_thunderform matches 4 run tellraw @s "Too Tired"
    execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=0}] ds_thunderform matches 4 run function demonslayer:breathing/thunder/kaigaku/fifth_form/init
#>Sixth Form
    execute if predicate core:click if score @s[scores={stamina=..15,ds_cooldown=0}] ds_thunderform matches 5 run tellraw @s "Too Tired"
    execute if predicate core:click if score @s[scores={stamina=16..,ds_cooldown=0}] ds_thunderform matches 5 run function demonslayer:breathing/thunder/kaigaku/sixth_form/init

#>Forms
execute if score @s[scores={ds_thunderform=1}] ds_formtime matches 1.. run function demonslayer:breathing/thunder/kaigaku/second_form/main
execute if score @s[scores={ds_thunderform=2}] ds_formtime matches 1.. run function demonslayer:breathing/thunder/kaigaku/third_form/main
execute if score @s[scores={ds_thunderform=4}] ds_formtime matches 1.. run function demonslayer:breathing/thunder/kaigaku/fifth_form/main

attribute @s[scores={ds_formtime=0}] generic.movement_speed modifier remove b607e8d0-bd75-4930-9475-17f935eeb919

