tag @s add ds_this
execute as @e[distance=..4,type=!#core:non_living] if score @s uuid = @e[tag=ds_this,limit=1,sort=nearest] projowner run tag @s add ds_owner
execute as @e[distance=..7,tag=ds_slash] if score @s projowner = @e[tag=ds_this,limit=1,sort=nearest] projowner run tag @s add ds_this
#particle soul_fire_flame ~ ~ ~
#scoreboard players add @s var1 1
#tellraw @a {"score":{"name":"@s","objective": "var1"}}

execute unless score @s var1 matches 1.. unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~2 ~2 ~2 if entity @e[tag=ds_slash,tag=!ds_this,dx=-4,dy=-4,dz=-4,scores={var1=1..}] at @s run function demonslayer:breathing/essentials/slash_parry
scoreboard players add @s var1 1


execute if score @s var1 matches 3 positioned ~.5 ~.5 ~.5 as @e[tag=!ds_owner,dx=-1,dy=-1,dz=-1,type=!#core:non_living,tag=!ds_hitbox] unless score @s ds_lhit matches 1.. run scoreboard players operation @s dmg = @e[tag=ds_this] var2
execute if score @s var1 matches 3 positioned ~.7 ~.7 ~.7 if entity @e[tag=projectile,dx=-1.4,dy=-1.4,dz=-1.4] run function demonslayer:breathing/essentials/slash_proj
execute if score @s var1 matches 3 unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~.5 ~.5 ~.5 as @a[tag=!ds_owner,dx=-1,dy=-1,dz=-1,scores={ds_lhit=0}] at @s facing entity @e[tag=ds_owner] feet run tp @s ^ ^.1 ^-.2
execute if score @s var1 matches 4 unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~.5 ~.5 ~.5 as @a[tag=!ds_owner,dx=-1,dy=-1,dz=-1,scores={ds_lhit=0}] at @s facing entity @e[tag=ds_owner] feet run tp @s ^ ^.1 ^-.2
execute if score @s var1 matches 3 unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~.5 ~.5 ~.5 as @e[tag=!ds_owner,dx=-1,dy=-1,dz=-1,type=!player] unless score @s ds_lhit matches 1.. at @s facing entity @e[tag=ds_owner] feet run function demonslayer:breathing/essentials/knockback


kill @s[scores={var1=5}]
tag @s remove ds_this
tag @e remove ds_owner