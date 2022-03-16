tag @s add ds_this
function demonslayer:breathing/insect/damage
#
execute if entity @s[nbt={OnGround:1b},scores={ds_formtime=3..}] run scoreboard players set @s ds_formtime 2
execute as @s at @s unless entity @s[x_rotation=25..90] rotated ~ 0 if block ^ ^-.5 ^.2 #airs run tp @s ^ ^-0.4 ^0.35
execute as @s at @s[x_rotation=25..90] if block ^ ^ ^.35 #airs run tp @s ^ ^ ^0.35
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] at @s run playsound minecraft:item.axe.wax_off player @a
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 80
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true


execute as @s at @s unless entity @s[x_rotation=25..90] rotated ~ 0 if block ^ ^-.5 ^.2 #airs run tp @s ^ ^-0.4 ^0.35
execute as @s at @s[x_rotation=25..90] if block ^ ^ ^.35 #airs run tp @s ^ ^ ^0.35
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] at @s run playsound minecraft:item.axe.wax_off player @a
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 80
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true


execute as @s at @s unless entity @s[x_rotation=25..90] rotated ~ 0 if block ^ ^-.5 ^.2 #airs run tp @s ^ ^-0.4 ^0.35
execute as @s at @s[x_rotation=25..90] if block ^ ^ ^.35 #airs run tp @s ^ ^ ^0.35
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] at @s run playsound minecraft:item.axe.wax_off player @a
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 80
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true


execute as @s at @s unless entity @s[x_rotation=25..90] rotated ~ 0 if block ^ ^-.5 ^.2 #airs run tp @s ^ ^-0.4 ^0.35
execute as @s at @s[x_rotation=25..90] if block ^ ^ ^.35 #airs run tp @s ^ ^ ^0.35
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] at @s run playsound minecraft:item.axe.wax_off player @a
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 80
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true


execute as @s at @s unless entity @s[x_rotation=25..90] rotated ~ 0 if block ^ ^-.5 ^.2 #airs run tp @s ^ ^-0.4 ^0.35
execute as @s at @s[x_rotation=25..90] if block ^ ^ ^.35 #airs run tp @s ^ ^ ^0.35
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] at @s run playsound minecraft:item.axe.wax_off player @a
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt={HurtTime:0s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 80
execute at @s positioned ~1 ~1 ~1 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true
execute as @s at @s unless entity @s[x_rotation=25..90] rotated ~ 0 if block ^ ^-.5 ^.2 #airs run tp @s ^ ^-0.4 ^0.35
execute as @s at @s[x_rotation=25..90] if block ^ ^ ^.35 #airs run tp @s ^ ^ ^0.35
tag @s remove ds_this