tag @e remove ds_new
summon zombie ~ ~ ~ {Health:300.0f,Tags:["ds_demon","custom","ds_um","ds_new"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1}],Cap:{Bda:1b,ID:1b},display:{Name:'{"text":"Blood Demon Art(nezuko)","italic": false,"color": "red"}'}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.030F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{HeadID:1b,SkullOwner:{Id:[I;1000,1000,1000,1000],Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYwMTk4NDQwMjUzNiwKICAicHJvZmlsZUlkIiA6ICIwMTVmMmFiYWYyNjE0NjhkYjI5MjI4Y2Q4MTZmNmEwNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJ4aGlrdXlhIiwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzJmZmJiOGU1ZDlmNjZmMzRkMDQyNjU5NGYzMjQ4NjliNDUzNThmNWY0ZDY1Zjc3MTI3ODQ1OGFiMWQxNmIyMjYiCiAgICB9CiAgfQp9"}]}}}}],CustomName:'{"text": "Upper Moon Demon"}',CustomNameVisible:1b,Attributes:[{Base:300.0d,Name:"generic.max_health"},{Base:28.0d,Name:"generic.attack_damage"},{Base:0.5d,Name:"generic.movement_speed"}],DeathLootTable:"demonslayer:demon",ActiveEffects:[{Amplifier:1,Id:11b,Duration:10000000}]}
scoreboard players set @e[tag=ds_new] stat_power 4