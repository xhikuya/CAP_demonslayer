tag @s add ds_this
execute as @e[distance=..4] if score @s uuid = @e[tag=ds_this,limit=1,sort=nearest] projowner run tag @s add ds_owner
execute as @e[distance=..7,tag=ds_slash] if score @s projowner = @e[tag=ds_this,limit=1,sort=nearest] projowner run tag @s add ds_this

#scoreboard players add @s var1 1
#tellraw @a {"score":{"name":"@s","objective": "var1"}}
#execute as @e[tag=ds_owner] run say hi
execute unless score @s var1 matches 1.. unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~2 ~2 ~2 if entity @e[tag=ds_slash,tag=!ds_this,dx=-4,dy=-4,dz=-4,scores={var1=1..}] at @s run playsound item.shield.break player @a ~ ~ ~
execute unless score @s var1 matches 1.. unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~2 ~2 ~2 if entity @e[tag=ds_slash,tag=!ds_this,dx=-4,dy=-4,dz=-4,scores={var1=1..}] as @e[tag=ds_owner,type=player] run tellraw @s {"text": "parry"}
execute unless score @s var1 matches 1.. unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~2 ~2 ~2 if entity @e[tag=ds_slash,tag=!ds_this,dx=-4,dy=-4,dz=-4,scores={var1=1..}] as @e[tag=ds_owner] run tell @p[distance=..10,tag=!ds_owner] {"text": "parried"}
execute unless score @s var1 matches 1.. unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~2 ~2 ~2 if entity @e[tag=ds_slash,tag=!ds_this,dx=-4,dy=-4,dz=-4,scores={var1=1..}] run scoreboard players add @e[tag=ds_owner,scores={ds_lhit=0}] ds_lhit 6
scoreboard players add @s var1 1


execute if score @s var1 matches 5 unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~.5 ~.5 ~.5 as @e[tag=!ds_owner,dx=-1,dy=-1,dz=-1,type=!#core:non_living,tag=!ds_hitbox] run scoreboard players operation @s dmg = @e[tag=ds_this] var2
execute if score @s var1 matches 5 unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~.5 ~.5 ~.5 as @a[tag=!ds_owner,dx=-1,dy=-1,dz=-1] at @s facing entity @e[tag=ds_owner] feet run tp @s ^ ^.6 ^-.6
execute if score @s var1 matches 6 unless entity @e[tag=ds_owner,scores={ds_lhit=1..}] positioned ~.5 ~.5 ~.5 as @a[tag=!ds_owner,dx=-1,dy=-1,dz=-1] at @s facing entity @e[tag=ds_owner] feet run tp @s ^ ^.6 ^-.6


kill @s[scores={var1=6}]
tag @s remove ds_this
tag @e remove ds_owner