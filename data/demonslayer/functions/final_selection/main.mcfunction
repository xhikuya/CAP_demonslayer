execute if predicate demonslayer:day_pass run scoreboard players add @s ds_finalselection 1
execute if predicate demonslayer:day_pass run tellraw @s {"text": "A day has passed...."}
execute if predicate demonslayer:day_pass if score @s ds_finalselection matches 8.. run tellraw @s {"text": "You Have passed final selection, proceed to your entry point to leave."}
execute if predicate demonslayer:day_pass run playsound item.trident.thunder player @s ~ ~ ~
gamemode adventure @s[gamemode=survival]
tag @s[scores={ds_finalselection=8..}] add ds_this
execute anchored eyes as @e[tag=ds_finalhome] if score @s uuid = @a[tag=ds_this,limit=1] uuid facing entity @s eyes as @a[tag=ds_this,limit=1] run particle angry_villager ^ ^ ^2

execute as @e[distance=..1,tag=ds_finalhome] if score @s uuid = @a[tag=ds_this,limit=1] uuid as @a[tag=ds_this] run function demonslayer:final_selection/leave
tag @s remove ds_this
title @s actionbar [{"text": "Day ","color": "red"},{"score":{"name": "@s","objective": "ds_finalselection"}}]
