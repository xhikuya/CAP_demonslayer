execute unless predicate demonslayer:breathing if predicate core:atked run function demonslayer:breathing/attack
execute unless predicate demonslayer:breathing run function demonslayer:breathing/essentials/hitbox
execute unless predicate demonslayer:breathing if entity @s[tag=ds_cattack] at @s run function demonslayer:breathing/attack2

execute if entity @s[predicate=core:macro,predicate=core:shift_click] run scoreboard players set @s ds_swap 6
execute if entity @s[predicate=core:macro,predicate=core:shift_click] run scoreboard players set @s s_click 0
execute if predicate core:macro run scoreboard players enable @s[name="xhikuya",predicate=demonslayer:breathing/sun] demonslayer_mark

execute if predicate demonslayer:1_chance positioned ~ ~1.4 ~ positioned ^ ^ ^.4 run particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0.05 1 normal
execute if predicate demonslayer:1_chance positioned ~ ~1.4 ~ positioned ^ ^ ^.4 run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0.05 1 normal
function demonslayer:breathing/essentials/moving_back
#execute if predicate core:macro run function demonslayer:breathing/essentials/moving_back2

