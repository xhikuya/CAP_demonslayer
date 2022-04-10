execute if entity @s[predicate=demonslayer:demon] run particle dust 0 0 0 1 ^ ^ ^ 0.1 0.1 0.1 0.2 15 normal
execute if entity @s[predicate=!demonslayer:demon] run particle dust 0.965 1 0 .8 ^ ^ ^ 0.1 0.1 0.1 0.2 15 normal
execute if entity @s[predicate=!demonslayer:demon] run particle dust 0 0.984 1 .5 ^ ^ ^ 0.2 0.2 0.2 0.2 3 normal

function demonslayer:breathing/thunder/kaigaku/third_form/dmg
tag @s add immune
execute positioned ~.5 ~.5 ~.5 as @e[tag=!immune,type=!#core:non_living,dx=-1,dz=-1,dy=-1,predicate=!core:dmg,nbt=!{HurtTime:10s}] run scoreboard players operation @s dmg = #ds:temp var1
execute if entity @s[predicate=demonslayer:demon,nbt={SelectedItem:{tag:{Cap:{Kaigaku:1b}}}}] positioned ~.7 ~.7 ~.7 as @e[tag=!immune,type=!#core:non_living,dx=-1.4,dz=-1.4,dy=-1.4,predicate=core:dmg] run effect give @s wither 5 4 true
tag @s remove immune
