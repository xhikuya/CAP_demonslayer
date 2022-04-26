execute if entity @s[predicate=core:atked,predicate=demonslayer:sword] run scoreboard players add @s xp_control 2
execute if entity @s[predicate=demonslayer:sword,nbt={HurtTime:9s}] run scoreboard players add @s xp_def 2
execute if entity @s[predicate=demonslayer:sword,scores={hurt=50..}] run scoreboard players add @s xp_def 10
execute if entity @s[predicate=demonslayer:sword,scores={hurt=90..}] run scoreboard players add @s xp_def 10

execute if entity @s[predicate=demonslayer:sword,nbt=!{HurtTime:0s},predicate=core:atked_full] run playsound item.shield.break player @s
execute if entity @s[nbt={HurtTime:10s},scores={ds_formtime=1..}] at @s run playsound item.shield.break player @a ~ ~ ~
execute as @s[predicate=core:sneak,nbt={SelectedItem:{tag:{GhostSword:1b}}},scores={ds_ghostswordc=0}] run function demonslayer:ghost


execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stat_control=5..,stamina=2..}] run scoreboard players add @s stamina_cool 10
execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stat_control=5..,stamina=2..}] run scoreboard players remove @s stamina 3
execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stamina_cool=10..20,stamina=..0}] run scoreboard players add @s xp_stamina 1
execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stamina_cool=10..20,stamina=..0}] run scoreboard players add @s stamina_cool 200

effect give @s[predicate=demonslayer:no_stam] slowness 4 0 true
effect give @s[predicate=demonslayer:no_stam] weakness 1 0 true

execute if score @s[scores={stat_stamina=0}] max_stamina matches 100.. run scoreboard players set @s max_stamina 50
function demonslayer:slayer/slayer_attributes
execute if entity @e[type=item,nbt={Item:{tag:{Cap:{BDA:0b}}}}] at @s run function demonslayer:demon/bda/random

execute if entity @s[nbt={SelectedItem:{tag:{Cap:{Invitation:1b}}}},predicate=core:click] unless score @s ds_finalselection matches 8.. at @s run function demonslayer:final_selection/enter

execute if entity @s[advancements={demonslayer:defense/45_def=true},predicate=!demonslayer:no_stam] run effect give @s speed 1 0 true
execute if entity @s[advancements={demonslayer:defense/45_def=true},predicate=!demonslayer:no_stam] run effect give @s jump_boost 1 1 true