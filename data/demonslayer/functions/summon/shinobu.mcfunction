
summon zombie ~ ~ ~ {Health:140.0f,Tags:["ds_slayer","custom","ds_shinobu","ds_new"],HandDropChances:[0.000F,0.000F],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{cap:{InsectBreathing:1b},Enchantments:[{}]}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.030F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14540253}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:460551}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:328965}}},{id:"minecraft:player_head",Count:1b,tag:{HeadID:1b,SkullOwner:{Id:[I;1526237022,-1390731569,-1690192039,996220705],Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTY0NjAwMzE2MjU1OSwKICAicHJvZmlsZUlkIiA6ICIwMTVmMmFiYWYyNjE0NjhkYjI5MjI4Y2Q4MTZmNmEwNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJ4aGlrdXlhIiwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzVjYTk5YjNkNmVhYWNiZjZiZmQzOTY0NzYzMzYwYTViNzA3MjA3NjQ3MjA4OTZiMTJlOTBjN2EzOWJkZDY0ODQiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}}}}],CustomName:'{"text": "Shinobu"}',CustomNameVisible:1b,Attributes:[{Base:140.0d,Name:"generic.max_health"},{Base:2.0d,Name:"generic.attack_damage"},{Base:0.36d,Name:"generic.movement_speed"},{Base:20.0d,Name:"generic.armor"},{Base:10.0d,Name:"generic.armor_toughness"},{Base:0.0d,Name:"generic.follow_range"}],ActiveEffects:[{Id:11b,Amplifier:3,Duration:100000000,ShowParticles:0b}]}
#scoreboard players set @e[tag=ds_new] stat_power 3
tag @e[tag=ds_new] remove ds_new
tag @s[type=zombie] add spawned