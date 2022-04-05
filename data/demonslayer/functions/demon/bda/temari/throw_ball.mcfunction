tag @e[tag=ds_new] remove ds_new
function demonslayer:demon/bda/temari/dmg
execute if entity @s[scores={ds_cooldown=0}] anchored eyes positioned ^ ^ ^1.5 run summon armor_stand ^-.8 ^-1.3 ^ {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:40008,Cap:{Bda:1b,ID:5b},display:{Name:'{"text":"Blood Demon Art(Susamaru)","italic": false,"color": "red"}'},AttributeModifiers:[{Amount:4,AttributeName:"minecraft:generic.attack_damage",Operation:0,Slot:"mainhand",UUID:[I;1010,1010,1010,1010],Name:"10"}],Enchantments:[{id:"minecraft:knockback",lvl:2}]}}],NoGravity:1b,Small:1b,Tags:["ds_temari","ds_new","ds_proj","projectile"],Invisible:1B}
execute if entity @s[scores={ds_cooldown=1..}] anchored eyes positioned ^ ^ ^1.5 run summon armor_stand ^.8 ^-1.3 ^ {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:40008,Cap:{Bda:1b,ID:5b},display:{Name:'{"text":"Blood Demon Art(Susamaru)","italic": false,"color": "red"}'},AttributeModifiers:[{Amount:4,AttributeName:"minecraft:generic.attack_damage",Operation:0,Slot:"mainhand",UUID:[I;1010,1010,1010,1010],Name:"10"}],Enchantments:[{id:"minecraft:knockback",lvl:2}]}}],NoGravity:1b,Small:1b,Tags:["ds_temari","ds_new","ds_proj","projectile"],Invisible:1B}
scoreboard players operation @e[tag=ds_new,limit=1] projowner = @s uuid
scoreboard players operation @e[tag=ds_new,limit=1] var2 = #ds:temp var1
data modify entity @e[tag=ds_new,limit=1] Rotation set from entity @s Rotation
scoreboard players set @s[scores={ds_cooldown=1..}] ds_cooldown 55
scoreboard players add @s[scores={ds_cooldown=0}] ds_cooldown 60
playsound entity.arrow.shoot player @a ~ ~ ~
tag @e[tag=ds_new] remove ds_new
scoreboard players remove @s stamina 20
scoreboard players add @s stamina_cool 40
