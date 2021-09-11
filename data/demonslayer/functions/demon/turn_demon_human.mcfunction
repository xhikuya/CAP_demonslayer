scoreboard players remove @s stat_stamina 3
scoreboard players remove @s max_stamina 60
scoreboard players remove @s stat_power 2
scoreboard players remove @s stat_control 2
scoreboard players remove @s stat_def 5


#>Remove Control
scoreboard players set #ds:stat_reset var3 200
scoreboard players set #ds:stat_reset var1 8
scoreboard players operation #ds:stat_reset var1 *= @s ds_blood
scoreboard players operation #ds:stat_reset var1 /= #ds:stat_reset var3
scoreboard players operation @s stat_control -= #ds:stat_reset var1
#>Remove Power
scoreboard players set #ds:stat_reset var1 16
scoreboard players operation #ds:stat_reset var1 *= @s ds_blood
scoreboard players operation #ds:stat_reset var1 /= #ds:stat_reset var3
scoreboard players operation @s stat_power -= #ds:stat_reset var1
#>remove stamina
scoreboard players set #ds:stat_reset var1 16
scoreboard players set #ds:stat_reset var2 20

scoreboard players operation #ds:stat_reset var1 *= @s ds_blood
scoreboard players operation #ds:stat_reset var1 /= #ds:stat_reset var3
scoreboard players operation @s stat_stamina -= #ds:stat_reset var1
scoreboard players operation #ds:stat_reset var1 *= #ds:stat_reset var2
scoreboard players operation @s max_stamina -= #ds:stat_reset var1
#>Remove Defense
scoreboard players set #ds:stat_reset var1 20
scoreboard players operation #ds:stat_reset var1 *= @s ds_blood
scoreboard players operation #ds:stat_reset var1 /= #ds:stat_reset var3
scoreboard players operation @s stat_def -= #ds:stat_reset var1
#>End
scoreboard players set @s ds_blood 0
scoreboard players set @s ds_bloodxp 0


attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f9632b
attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963b

execute if entity @s[advancements={demonslayer:demon/blood_5=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963c
execute if entity @s[advancements={demonslayer:demon/blood_5=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963
execute if entity @s[advancements={demonslayer:demon/blood_10=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963d
execute if entity @s[advancements={demonslayer:demon/blood_10=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963d
execute if entity @s[advancements={demonslayer:demon/blood_10=true}] run effect give @s jump_boost 1 1 true
execute if entity @s[advancements={demonslayer:demon/blood_10=true}] run effect give @s speed 1 1 true
execute if entity @s[advancements={demonslayer:demon/blood_15=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963e
execute if entity @s[advancements={demonslayer:demon/blood_15=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963e
execute if entity @s[advancements={demonslayer:demon/blood_20=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963f
execute if entity @s[advancements={demonslayer:demon/blood_20=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963f
execute if entity @s[advancements={demonslayer:demon/blood_20=true}] run effect give @s speed 1 2 true
execute if entity @s[advancements={demonslayer:demon/blood_25_lm=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fa
execute if entity @s[advancements={demonslayer:demon/blood_25_lm=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fa

execute if entity @s[advancements={demonslayer:demon/blood_30=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fb
execute if entity @s[advancements={demonslayer:demon/blood_30=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fb
execute if entity @s[advancements={demonslayer:demon/blood_35=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fc
execute if entity @s[advancements={demonslayer:demon/blood_35=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fc
execute if entity @s[advancements={demonslayer:demon/blood_40=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fd
execute if entity @s[advancements={demonslayer:demon/blood_40=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fd

execute if entity @s[advancements={demonslayer:demon/blood_45_um=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fe
execute if entity @s[advancements={demonslayer:demon/blood_45_um=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963fe
execute if entity @s[advancements={demonslayer:demon/blood_50=true}] run attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963ff
execute if entity @s[advancements={demonslayer:demon/blood_50=true}] run attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f963ff


attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffa
attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffa

attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffb
attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffb

attribute @s generic.max_health modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffc
 attribute @s generic.attack_damage modifier remove 4d2ba4c6-f7bd-4390-ba6b-ca9e75f96ffc
advancement revoke @s through demonslayer:demon/blood_5

