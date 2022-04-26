tag @a[scores={ability=2},tag=ds_cattack] remove ds_cattack
execute as @a[tag=started] run function demonslayer:select
execute as @a[tag=selected_ability,scores={ability=2}] run function demonslayer:selected
execute as @a[scores={ds_racechoice=1..},tag=!racechosen] run function demonslayer:racechoice

execute as @a[scores={ability=2},predicate=core:macro] run scoreboard players enable @s backstep_macro

execute as @a[scores={ds_death=1..,ability=2}] at @s run function demonslayer:dead
execute as @a[scores={ability=2},tag=!demon_boost] run function demonslayer:main_slayer
execute as @a[scores={ability=2},tag=demon_boost] run function demonslayer:main_demon
execute as @a[scores={ability=2}] run function demonslayer:player

execute as @e[predicate=demonslayer:modified_entity] at @s run function demonslayer:modified


execute as @a[predicate=demonslayer:in_selection] at @s run function demonslayer:final_selection/main
scoreboard players set @a[scores={ds_kill=1..}] ds_kill 0
scoreboard players set @a[scores={ds_kill2=1..}] ds_kill2 0
scoreboard players set @a[scores={ds_wist_break=1..}] ds_wist_break 0
execute as @a[nbt=!{Inventory:[{Slot:103b}]},predicate=demonslayer:mask] if predicate core:click run function demonslayer:mask/equip