execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{SunBreathing:1b,CustomModelData:1}

execute if entity @s[predicate=core:sneak] run scoreboard players add @s ds_swap 1
execute if score @s ds_swap matches 6.. run scoreboard players add @s[scores={ds_formtime=0}] ds_sunform 1
scoreboard players set @s[scores={ds_sunform=11..}] ds_sunform 1

scoreboard players set @s[scores={ds_sunform=2..,stat_control=5..7}] ds_sunform 1
scoreboard players set @s[scores={ds_sunform=3..,stat_control=8..11}] ds_sunform 1
scoreboard players set @s[scores={ds_sunform=4..,stat_control=12..14}] ds_sunform 1
scoreboard players set @s[scores={ds_sunform=5..,stat_control=15..16}] ds_sunform 1
scoreboard players set @s[scores={ds_sunform=6..,stat_control=17..18}] ds_sunform 1

execute if score @s[scores={ds_swap=6..}] ds_sunform matches 1 run tellraw @s {"text": "First Form: Dance","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 2 run tellraw @s {"text": "Second Form: Clear Blue Sky","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 3 run tellraw @s {"text": "Third Form: Raging Sun","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 4 run tellraw @s {"text": "Fourth Form: Burning bones, Summer sun","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 5 run tellraw @s {"text": "Fifth Form: Sunflower Thrust","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 6 run tellraw @s {"text": "Sixth Form: Dragon Sun Halo Dance","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 7 run tellraw @s {"text": "Seventh Form: Setting Sun Transformation","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 8 run tellraw @s {"text": "Eighth Form: Solar Heat Haze","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 9 run tellraw @s {"text": "Ninth Form: Beneficient Radiance","color": "red"}
execute if score @s[scores={ds_swap=6..}] ds_sunform matches 10 run tellraw @s {"text": "Tenth Form: Fire Wheel","color": "red"}


execute if score @s ds_swap matches 6.. run scoreboard players set @s ds_swap 1
#>actual moves
execute if predicate core:atked at @s run function demonslayer:breathing/sun/slash_chance
function demonslayer:breathing/essentials/hitbox
execute if entity @s[tag=ds_cattack] at @s run function demonslayer:breathing/sun/slash_custom



execute if predicate core:click if score @s[scores={stamina=..2,ds_cooldown=0,ds_formtime=0}] ds_sunform matches 1 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=3..,ds_cooldown=0,ds_formtime=0}] ds_sunform matches 1 run function demonslayer:breathing/sun/dance/dance_init
execute if predicate core:click if score @s[scores={stamina=..15,ds_cooldown=0}] ds_sunform matches 2 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=16..,ds_cooldown=0}] ds_sunform matches 2 run function demonslayer:breathing/sun/blue_sky/init

execute if predicate core:click if score @s[scores={stamina=..7,ds_cooldown=0}] ds_sunform matches 3 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=8..,ds_cooldown=0}] ds_sunform matches 3 run function demonslayer:breathing/sun/2nd_ragingsun/init


execute if predicate core:click if score @s[scores={stamina=..24,ds_cooldown=0}] ds_sunform matches 4 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=25..,ds_cooldown=0}] ds_sunform matches 4 run function demonslayer:breathing/sun/burning_bones/init


execute if predicate core:click if score @s[scores={stamina=..15,ds_cooldown=0}] ds_sunform matches 5 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=16..,ds_cooldown=0}] ds_sunform matches 5 run function demonslayer:breathing/sun/thrust/init

execute if predicate core:click if score @s[scores={stamina=..10,ds_cooldown=0}] ds_sunform matches 7 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=11..,ds_cooldown=0},nbt={OnGround:1b}] ds_sunform matches 7 run function demonslayer:breathing/sun/setting_sun/init


execute if predicate core:click if score @s[scores={stamina=..20,ds_cooldown=0}] ds_sunform matches 9 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=21..,ds_cooldown=0},nbt={OnGround:1b}] ds_sunform matches 9 run function demonslayer:breathing/sun/radiance/init

execute if predicate core:click if score @s[scores={stamina=..10,ds_cooldown=0}] ds_sunform matches 10 run tellraw @s "Too Tired"
execute if predicate core:click if score @s[scores={stamina=11..,ds_cooldown=0}] ds_sunform matches 10 run function demonslayer:breathing/sun/fire_wheel/init


attribute @s[scores={ds_formtime=0}] generic.movement_speed modifier remove f35f79b2-47b2-4d8a-8f26-e07d71fc13e9
tag @s[scores={ds_formtime=0}] remove sprint
execute as @s[scores={ds_sunform=1,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/dance/dance
execute as @s[scores={ds_sunform=2,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/blue_sky/main
execute as @s[scores={ds_sunform=3,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/2nd_ragingsun/main
execute as @s[scores={ds_sunform=4,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/burning_bones/main
execute as @s[scores={ds_sunform=5,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/thrust/main

execute as @s[scores={ds_sunform=7,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/setting_sun/main

execute as @s[scores={ds_sunform=9,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/radiance/main
execute as @s[scores={ds_sunform=10,ds_formtime=1..}] at @s run function demonslayer:breathing/sun/fire_wheel/main

