tag @e[tag=ds_new] remove ds_new
summon zombie ~ ~ ~ {Health:80.0f,Tags:["ds_demon","custom","ds_new"],PersistenceRequired:0b,ArmorDropChances:[0.000F,0.000F,0.000F,0.030F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{HeadID:1b,SkullOwner:{Id:[I;1000,1000,1000,1000],Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYwMTk4NDQwMjUzNiwKICAicHJvZmlsZUlkIiA6ICIwMTVmMmFiYWYyNjE0NjhkYjI5MjI4Y2Q4MTZmNmEwNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJ4aGlrdXlhIiwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzJmZmJiOGU1ZDlmNjZmMzRkMDQyNjU5NGYzMjQ4NjliNDUzNThmNWY0ZDY1Zjc3MTI3ODQ1OGFiMWQxNmIyMjYiCiAgICB9CiAgfQp9"}]}}}}],CustomName:'{"text": "Demon"}',CustomNameVisible:1b,Attributes:[{Base:80.0d,Name:"generic.max_health"},{Base:8.0d,Name:"generic.attack_damage"},{Base:0.4d,Name:"generic.movement_speed"}],DeathLootTable:"demonslayer:demon",DrownedConversionTime:-1000000000}
item replace entity @e[tag=ds_new] weapon.mainhand with carrot_on_a_stick{CustomModelData:40005,Cap:{Bda:1b,ID:4b},display:{Name:'{"text":"Blood Demon Art(Basic)","italic": false,"color": "red"}'},AttributeModifiers:[{Amount:1,AttributeName:"minecraft:generic.attack_damage",Operation:0,Slot:"mainhand",UUID:[I;1010,1010,1010,1010],Name:"4"},{Amount:3,AttributeName:"minecraft:generic.attack_knockback",Operation:0,Slot:"mainhand",UUID:[I;1010,1010,1010,1011],Name:"4"}]}

tag @e[tag=ds_new] remove ds_new