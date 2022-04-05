tag @e[tag=ds_this] remove ds_this
tag @s add ds_this
scoreboard players add @s var1 1
execute at @s run tp @s ^ ^ ^0.4
execute at @s run tp @s[scores={var1=10..}] ^ ^-.04 ^
execute positioned ~ ~1 ~ unless block ^ ^ ^0.4 #airs run function demonslayer:demon/bda/temari/projectile/dmg
execute at @s[scores={var1=3..}] positioned ~1 ~1 ~1 if entity @e[tag=!ds_this,dy=-2,dz=-2,dx=-1] run function demonslayer:demon/bda/temari/projectile/dmg
execute at @s run tp @s ^ ^ ^0.4
execute at @s run tp @s[scores={var1=10..}] ^ ^-.04 ^
execute positioned ~ ~1 ~ unless block ^ ^ ^0.4 #airs run function demonslayer:demon/bda/temari/projectile/dmg
execute at @s[scores={var1=3..}] positioned ~1 ~1 ~1 if entity @e[tag=!ds_this,dy=-2,dz=-2,dx=-1] run function demonslayer:demon/bda/temari/projectile/dmg
execute at @s run tp @s ^ ^ ^0.4
execute at @s run tp @s[scores={var1=10..}] ^ ^-.04 ^
execute positioned ~ ~1 ~ unless block ^ ^ ^0.4 #airs run function demonslayer:demon/bda/temari/projectile/dmg
execute at @s[scores={var1=3..}] positioned ~1 ~1 ~1 if entity @e[tag=!ds_this,dy=-2,dz=-2,dx=-1] run function demonslayer:demon/bda/temari/projectile/dmg
particle crit ~ ~1 ~
kill @s[scores={var1=40..}]