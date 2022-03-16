tag @s add ds_this
attribute @s generic.attack_damage modifier add ac0dd89f-cbec-49b6-84ae-f7494664236c "half" -0.5 multiply
function demonslayer:breathing/insect/damage
particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 30 normal
execute positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,type=#arrows] run kill @s
execute positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this] run scoreboard players operation @s dmg = #ds:temp var1
execute positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,predicate=demonslayer:demon] run scoreboard players add @s ds_wisteria 4
execute positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 3 1 true
attribute @s generic.attack_damage modifier remove ac0dd89f-cbec-49b6-84ae-f7494664236c
playsound minecraft:entity.bee.sting player @a ~ ~ ~
playsound entity.player.attack.sweep player @a ~ ~ ~
tag @s remove ds_this 
