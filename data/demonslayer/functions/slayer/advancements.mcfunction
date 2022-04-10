execute if entity @s[advancements={demonslayer:defense/10_def=true}] run effect give @s resistance 100 0 true
execute if entity @s[advancements={demonslayer:defense/20_def=true}] run effect give @s resistance 100 1 true
execute if entity @s[advancements={demonslayer:defense/20_def=true,demonslayer:defense/30_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632e "4" 4 add
execute if entity @s[advancements={demonslayer:defense/20_def=true,demonslayer:defense/30_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s health_boost 1000000 0 true


execute if entity @s[advancements={demonslayer:defense/30_def=true}] run effect give @s resistance 100 2 true
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632e "4" 18 add
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s health_boost 1000000 0 true
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false},nbt=!{ActiveEffects:[{Id:22b}]}] run effect give @s absorption 120 2 true
execute if entity @s[advancements={demonslayer:defense/40_def=true}] run effect give @s resistance 100 3 true
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false},nbt=!{ActiveEffects:[{Id:22b}]}] run effect give @s absorption 120 3 true

execute if entity @s[advancements={demonslayer:defense/45_def=true},nbt=!{ActiveEffects:[{Id:22b}]}] run effect give @s absorption 120 5 true
execute if entity @s[advancements={demonslayer:defense/45_def=true},predicate=!demonslayer:no_stam,nbt=!{ActiveEffects:[{Id:10b}]}] run effect give @s regeneration 16 0 true
execute if entity @s[advancements={demonslayer:defense/45_def=true},nbt=!{ActiveEffects:[{Id:21b}]}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632e "4" 24 add
execute if entity @s[advancements={demonslayer:defense/45_def=true},nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s health_boost 1000000 0 true
