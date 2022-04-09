execute as @e[distance=..1,tag=ds_finalhome] if score @s uuid = @a[tag=ds_this,limit=1] uuid run kill @s
gamemode survival @s
execute in overworld run tp @s ~ ~ ~
gamemode survival @s
tellraw @s {"text": "You have Exited Final Selection"}
function demonslayer:final_selection/give_armor
function demonslayer:slayer/give_nichirin

gamemode survival @s