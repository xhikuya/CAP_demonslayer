execute if entity @s[predicate=core:atked,predicate=demonslayer:sword] run scoreboard players add @s xp_control 1
execute if entity @s[predicate=demonslayer:sword,nbt={HurtTime:10s}] run scoreboard players add @s xp_def 1
execute if entity @s[predicate=demonslayer:sword,nbt=!{HurtTime:0s},predicate=core:atked_full] run playsound item.shield.break player @s



execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stat_control=2..,stamina=2..}] run scoreboard players add @s stamina_cool 10
execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stat_control=2..,stamina=2..}] run scoreboard players remove @s stamina 3
execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stamina_cool=10..20,stamina=..0}] run scoreboard players add @s xp_stamina 1
execute if entity @s[predicate=core:atked,predicate=demonslayer:sword,scores={stamina_cool=10..20,stamina=..0}] run scoreboard players add @s stamina_cool 200

effect give @s[predicate=demonslayer:no_stam] slowness 4 0 true
effect give @s[predicate=demonslayer:no_stam] weakness 1 0 true

execute if score @s[scores={stat_stamina=0}] max_stamina matches 100.. run scoreboard players set @s max_stamina 50
function demonslayer:slayer_attributes

execute if entity @s[advancements={demonslayer:defense/10_def=true}] run effect give @s resistance 1 0 true
execute if entity @s[advancements={demonslayer:defense/20_def=true}] run effect give @s resistance 1 1 true
execute if entity @s[advancements={demonslayer:defense/20_def=true,demonslayer:defense/30_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632e "4" 4 add
execute if entity @s[advancements={demonslayer:defense/20_def=true,demonslayer:defense/30_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s health_boost 1000000 0 true


execute if entity @s[advancements={demonslayer:defense/30_def=true}] run effect give @s resistance 1 2 true
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632e "4" 18 add
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s health_boost 1000000 0 true
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false},nbt=!{ActiveEffects:[{Id:22b}]}] run effect give @s absorption 120 2 true
execute if entity @s[advancements={demonslayer:defense/40_def=true}] run effect give @s resistance 1 3 true

execute if entity @s[advancements={demonslayer:defense/45_def=true},nbt=!{ActiveEffects:[{Id:22b}]}] run effect give @s absorption 120 5 true
execute if entity @s[advancements={demonslayer:defense/45_def=true},predicate=!demonslayer:no_stam,nbt=!{ActiveEffects:[{Id:10b}]}] run effect give @s regeneration 10 0 true
execute if entity @s[advancements={demonslayer:defense/45_def=true},nbt=!{ActiveEffects:[{Id:21b}]}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632e "4" 24 add
execute if entity @s[advancements={demonslayer:defense/45_def=true},nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s health_boost 1000000 0 true

execute if entity @s[advancements={demonslayer:defense/45_def=true},predicate=!demonslayer:no_stam] run effect give @s speed 1 0 true
execute if entity @s[advancements={demonslayer:defense/45_def=true},predicate=!demonslayer:no_stam] run effect give @s jump_boost 1 1 true

