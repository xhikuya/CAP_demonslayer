execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{WaterBreathing:1b,CustomModelData:1}

execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=8..}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=1..,stat_control=..4}] ds_waterform 0
scoreboard players set @s[scores={ds_waterform=2..,stat_control=5..7}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=3..,stat_control=8..11}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=4..,stat_control=12..14}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=5..,stat_control=15..16},advancements={demonslayer:slayer/demons/kill_demon50=false}] ds_waterform 1
scoreboard players set @s[scores={ds_waterform=7..},advancements={demonslayer:slayer/demons/kill_demon50=false}] ds_waterform 1


execute if score @s[scores={ds_swap=6..}] ds_waterform matches 1 run tellraw @s {"text": "First Form: Water Surface Slash","color": "blue"}
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 2 run tellraw @s {"text": "Second Form: Water Wheel","color": "blue"}
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 3 run tellraw @s {"text": "Third Form: Flowing Dance","color": "blue"}
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 4 run tellraw @s {"text": "Fifth Form: Blessed rain","color": "blue"}
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 5 run tellraw @s {"text": "Sixth Form: Whirlpool","color": "blue"}
execute if score @s[scores={ds_swap=6..}] ds_waterform matches 6 run tellraw @s {"text": "Eighth Form: Waterfall Basin","color": "blue"}

execute if score @s[scores={ds_swap=6..}] ds_waterform matches 7 run tellraw @s {"text": "Eleventh Form: Dead Calm","color": "#0077D6"}

execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#>actual moves


execute if predicate core:atked run function demonslayer:breathing/water/slash
function demonslayer:breathing/essentials/hitbox
execute if entity @s[tag=ds_cattack] at @s run function demonslayer:breathing/water/slash_custom


execute if predicate core:click if score @s[scores={stamina=..10,ds_cooldown=0}] ds_waterform matches 1 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=11..,ds_cooldown=0}] ds_waterform matches 1 run function demonslayer:breathing/water/surface_slash

execute if predicate core:click if score @s[scores={stamina=..14,ds_cooldown=0}] ds_waterform matches 2 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=15..,ds_cooldown=0}] ds_waterform matches 2 run function demonslayer:breathing/water/water_wheel

execute if predicate core:click if score @s[scores={stamina=..17,ds_cooldown=0}] ds_waterform matches 3 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=18..,ds_cooldown=0},predicate=!demonslayer:breathing/sun] ds_waterform matches 3 run function demonslayer:breathing/water/third_form1

execute if predicate core:click if score @s[scores={stamina=..19,ds_cooldown=0}] ds_waterform matches 4 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=20..,ds_cooldown=0},predicate=!demonslayer:breathing/sun] ds_waterform matches 4 run function demonslayer:breathing/water/5th/init

execute if predicate core:click if score @s[scores={stamina=..15,ds_cooldown=0}] ds_waterform matches 5 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=16..,ds_cooldown=0},predicate=!demonslayer:breathing/sun] ds_waterform matches 5 run function demonslayer:breathing/water/6th/init

execute if predicate core:click if score @s[scores={stamina=..23,ds_cooldown=0}] ds_waterform matches 6 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=24..,ds_cooldown=0},predicate=!demonslayer:breathing/sun] ds_waterform matches 6 run function demonslayer:breathing/water/8th/init
execute if predicate core:click if score @s[scores={stamina=..23,ds_cooldown=0}] ds_waterform matches 7 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=24..,ds_cooldown=0},predicate=!demonslayer:breathing/sun] ds_waterform matches 7 run function demonslayer:breathing/water/dead_calm/init

#> yes

execute if score @s[scores={ds_waterform=1}] ds_formtime matches 5.. run function demonslayer:breathing/water/surface_slash
execute if score @s[scores={ds_waterform=3}] ds_formtime matches 5.. run function demonslayer:breathing/water/third_form
execute if score @s[scores={ds_waterform=4}] ds_formtime matches 5.. run function demonslayer:breathing/water/5th/main
execute if score @s[scores={ds_waterform=5}] ds_formtime matches 5.. run function demonslayer:breathing/water/6th/main
execute if score @s[scores={ds_waterform=6}] ds_formtime matches 5.. run function demonslayer:breathing/water/8th/main
execute if score @s[scores={ds_waterform=7}] ds_formtime matches 5.. run function demonslayer:breathing/water/dead_calm/main



