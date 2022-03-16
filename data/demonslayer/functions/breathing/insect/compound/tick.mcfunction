tag @s add ds_this
function demonslayer:breathing/insect/damage
#scoreboard players operation #ds:temp var1 /= #ds:temp var2
execute if score @s ds_formtime matches 5.. anchored eyes at @s positioned ^ ^ ^2.3 run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 30 normal
execute if score @s ds_formtime matches 5.. anchored eyes at @s positioned ^ ^ ^2 positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,type=#arrows] run kill @s
execute if score @s ds_formtime matches 5.. anchored eyes at @s positioned ^ ^ ^2 positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this] run scoreboard players operation @s dmg = #ds:temp var1
execute if score @s ds_formtime matches 5.. anchored eyes at @s positioned ^ ^ ^2 positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,predicate=demonslayer:demon] run scoreboard players add @s ds_wisteria 25
execute if score @s ds_formtime matches 5.. anchored eyes at @s positioned ^ ^ ^2 positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true
playsound minecraft:entity.bee.sting player @a ~ ~ ~
playsound entity.player.attack.sweep player @a ~ ~ ~
tag @s remove ds_this 
