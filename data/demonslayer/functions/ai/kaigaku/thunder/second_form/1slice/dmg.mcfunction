execute if entity @s[predicate=demonslayer:demon] run particle dust 0 0 0 1 ^ ^1.4 ^2.3 0.1 0.1 0.1 0.2 15 normal
execute if entity @s[predicate=!demonslayer:demon] run particle dust 0.965 1 0 .8 ^ ^1.4 ^2.3 0.1 0.1 0.1 0.2 15 normal
execute if entity @s[predicate=!demonslayer:demon] run particle dust 0 0.984 1 .5 ^ ^1.4 ^2.3 0.2 0.2 0.2 0.2 3 normal

function demonslayer:ai/kaigaku/thunder/second_form/damage
tag @s add immune
execute unless entity @s[predicate=demonslayer:demon] positioned ^ ^ ^2 positioned ~1 ~1 ~1 as @e[tag=!immune,type=!#core:non_living,dx=-2,dz=-2,dy=-2,predicate=!core:dmg,nbt=!{HurtTime:10s},predicate=demonslayer:target_slayer] run scoreboard players operation @s dmg = #ds:temp var1
execute if entity @s[predicate=demonslayer:demon] positioned ^ ^ ^2 positioned ~1 ~1 ~1 as @e[tag=!immune,type=!#core:non_living,dx=-2,dz=-2,dy=-2,predicate=!core:dmg,nbt=!{HurtTime:10s},predicate=demonslayer:target_demon] run scoreboard players operation @s dmg = #ds:temp var1
execute if entity @s[predicate=demonslayer:demon] positioned ^ ^ ^2 positioned ~.7 ~.7 ~.7 as @e[tag=!immune,type=!#core:non_living,dx=-1.4,dz=-1.4,dy=-1.4,predicate=core:dmg,predicate=demonslayer:target_demon] run effect give @s wither 5 4 true
tag @s remove immune
