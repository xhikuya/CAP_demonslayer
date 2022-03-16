tag @s add ds_this
function demonslayer:breathing/insect/damage
execute as @s at @s rotated ~ 0 if block ^ ^ ^.5 #airs run tp @s ^ ^ ^.5
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this] at @s run playsound minecraft:entity.bee.sting player @a ~ ~ ~
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt=!{HurtTime:10s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 100
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true

execute as @s at @s rotated ~ 0 if block ^ ^ ^.5 #airs run tp @s ^ ^ ^.5
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this] at @s run playsound minecraft:entity.bee.sting player @a ~ ~ ~
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt=!{HurtTime:10s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 100
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true

execute as @s at @s rotated ~ 0 if block ^ ^ ^.5 #airs run tp @s ^ ^ ^.5
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this] at @s run playsound minecraft:entity.bee.sting player @a ~ ~ ~
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,nbt=!{HurtTime:10s}] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 100
execute at @s positioned ~0.5 ~0.5 ~0.5 as @e[dx=-1,dy=-1,dz=-1,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true


tag @s remove ds_this
