scoreboard players remove @a[scores={ds_sleepcool=1..}] ds_sleepcool 1
execute at @s if predicate core:sneak if block ~ ~ ~ #beds unless score @s ds_sleepcool matches 1.. run function demonslayer:demon/time_progress

execute if entity @s[predicate=demonslayer:killed] run scoreboard players add @s ds_bloodxp 4
execute if entity @s[scores={ds_bloodxp=200..}] run scoreboard players add @s xp_control 8
execute if entity @s[scores={ds_bloodxp=200..}] run scoreboard players add @s xp_power 16
execute if entity @s[scores={ds_bloodxp=200..}] run scoreboard players add @s xp_stamina 20
execute if entity @s[scores={ds_bloodxp=200..}] run scoreboard players add @s xp_def 20
execute if entity @s[scores={ds_bloodxp=200..}] run scoreboard players add @s ds_blood 1
execute if entity @s[scores={ds_bloodxp=200..}] run scoreboard players set @s ds_bloodxp 0

execute at @s if predicate demonslayer:skylight unless predicate demonslayer:time_check unless predicate demonslayer:raining unless predicate demonslayer:end run function demonslayer:demon/sun
execute at @s if block ~ ~ ~ lilac run scoreboard players add @s ds_wisteria 1
scoreboard players set @s[scores={ds_wisteria=0}] ds_wist_tick 0
execute at @s[scores={ds_wist_tick=0}] if block ~ ~ ~ lilac run scoreboard players add @s ds_wist_tick 10
execute as @s[scores={ds_wisteria=1..}] at @s run function demonslayer:demon/wisteria
scoreboard players add @s[scores={ds_wist_break=1..}] ds_wisteria 40

execute as @s[predicate=core:sneak,scores={ds_cooldown=0,stamina=58..},nbt={SelectedItemSlot:8}] run function demonslayer:demon/regen
execute as @s[advancements={demonslayer:demon/blood_15=true},nbt={SelectedItemSlot:7}] run function demonslayer:demon/bda/main

#>atk
execute if entity @s[predicate=core:atked,scores={stamina=3..}] run scoreboard players add @s stamina_cool 20
execute if entity @s[predicate=core:atked,scores={stamina=3..}] run scoreboard players remove @s stamina 3
execute if entity @s[predicate=core:atked,scores={stamina_cool=10..20,stamina=..0}] run scoreboard players add @s xp_stamina 1
execute if entity @s[predicate=core:atked,scores={stamina_cool=10..20,stamina=..0}] run scoreboard players add @s stamina_cool 400
#>no stam
effect give @s[predicate=demonslayer:no_stam] slowness 4 1 true
effect give @s[predicate=demonslayer:no_stam] weakness 1 1 true
execute if score @s stat_control matches 4.. if predicate demonslayer:sword unless predicate demonslayer:no_stam run attribute @s generic.attack_speed base set 6
execute if predicate demonslayer:no_stam run attribute @s generic.attack_speed modifier add d87e9c32-64b8-4ab7-858f-a0233fb8d37f "0.9" -0.9 multiply
execute if predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier add d87e9c32-64b8-4ab7-858f-a0233fb8d37f "0.9" -0.9 multiply
execute unless predicate demonslayer:no_stam run attribute @s generic.attack_speed modifier remove d87e9c32-64b8-4ab7-858f-a0233fb8d37f
execute unless predicate demonslayer:no_stam run attribute @s generic.attack_damage modifier remove d87e9c32-64b8-4ab7-858f-a0233fb8d37f

#>defense
execute if entity @s[advancements={demonslayer:defense/10_def=true}] run effect give @s resistance 1 0 true
execute if entity @s[advancements={demonslayer:defense/20_def=true},nbt=!{ActiveEffects:[{Id:22b}]}] run effect give @s absorption 700 0 true
execute if entity @s[advancements={demonslayer:defense/20_def=true,demonslayer:defense/30_def=false}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632a "4" 4 add
execute if entity @s[advancements={demonslayer:defense/20_def=true,demonslayer:defense/30_def=false},nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s health_boost 1000000 3 true
execute if entity @s[advancements={demonslayer:defense/30_def=true},nbt=!{ActiveEffects:[{Id:22b}]}] run effect give @s absorption 700 1 true
execute if entity @s[advancements={demonslayer:defense/30_def=true,demonslayer:defense/45_def=false}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632b "4" 10 add
execute if entity @s[advancements={demonslayer:defense/40_def=true}] run effect give @s resistance 1 1 true
execute if entity @s[advancements={demonslayer:defense/45_def2=true}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632c "4" 16 add
#>blood
execute if score @s ds_blood matches 1.. run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632b "4" 20 add
execute if score @s ds_blood matches 1.. run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963b "4" 4 add
execute if score @s ds_blood matches 1.. run effect give @s resistance 1 0 true
execute if score @s ds_blood matches 1.. run effect give @s speed 1 0 true
execute if score @s ds_blood matches 1.. run effect give @s jump_boost 1 0 true

execute if score @s ds_blood matches 2.. run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963a "4" 20 add
execute if score @s ds_blood matches 2.. run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963a "4" 2 add

execute if entity @s[predicate=demonslayer:blood/blood_5] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963c "4" 10 add
execute if entity @s[predicate=demonslayer:blood/blood_5] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963c "4" 2 add
execute if entity @s[predicate=demonslayer:blood/blood_10] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963d "4" 10 add
execute if entity @s[predicate=demonslayer:blood/blood_10] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963d "4" 1 add
execute if entity @s[predicate=demonslayer:blood/blood_10] run effect give @s jump_boost 1 1 true
execute if entity @s[predicate=demonslayer:blood/blood_10] run effect give @s speed 1 1 true
execute if entity @s[predicate=demonslayer:blood/blood_15] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963e "4" 20 add
execute if entity @s[predicate=demonslayer:blood/blood_15] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963e "4" 2 add
execute if entity @s[predicate=demonslayer:blood/blood_20] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963f "4" 20 add
execute if entity @s[predicate=demonslayer:blood/blood_20] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963f "4" 2 add
execute if entity @s[predicate=demonslayer:blood/blood_20] run effect give @s speed 1 2 true
execute if entity @s[predicate=demonslayer:blood/blood_25_lm] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fa "4" 50 add
execute if entity @s[predicate=demonslayer:blood/blood_25_lm] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fa "4" 5 add

execute if entity @s[predicate=demonslayer:blood/blood_30] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fb "4" 20 add
execute if entity @s[predicate=demonslayer:blood/blood_30] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fb "4" 1 add
execute if entity @s[predicate=demonslayer:blood/blood_35] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fc "4" 20 add
execute if entity @s[predicate=demonslayer:blood/blood_35] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fc "4" 1 add
execute if entity @s[predicate=demonslayer:blood/blood_40] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fd "4" 20 add
execute if entity @s[predicate=demonslayer:blood/blood_40] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fd "4" 1 add

execute if entity @s[predicate=demonslayer:blood/blood_45_um] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fe "4" 50 add
execute if entity @s[predicate=demonslayer:blood/blood_45_um] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fe "4" 5 add
execute if entity @s[predicate=demonslayer:blood/blood_50] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963ff "4" 25 add
execute if entity @s[predicate=demonslayer:blood/blood_50] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963ff "4" 3 add


execute if entity @s[scores={ds_blood=60..}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffa "4" 20 add
execute if entity @s[scores={ds_blood=60..}] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffa "4" 1 add

execute if entity @s[scores={ds_blood=70..}] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffb "4" 20 add
execute if entity @s[scores={ds_blood=70..}] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffb "4" 1 add

execute if entity @s[predicate=demonslayer:blood/blood_75] run attribute @s generic.max_health modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffc "4" 80 add
execute if entity @s[predicate=demonslayer:blood/blood_75] run attribute @s generic.attack_damage modifier add 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffc "4" 1 add



