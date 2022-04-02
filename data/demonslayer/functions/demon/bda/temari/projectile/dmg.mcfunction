execute at @s run playsound entity.generic.explode player @a ~ ~ ~ 0.8
execute at @s at @a[distance=16..30] run playsound entity.generic.explode player @a ~ ~ ~ 0.3

particle explosion ~ ~ ~
function demonslayer:demon/bda/temari/projectile/death_msg
execute at @s[scores={var1=3..}] positioned ~1 ~1 ~1 as @e[tag=!ds_this,dy=-2,dz=-2,dx=-1] run scoreboard players operation @s dmg = @e[tag=ds_this,limit=1] var2
kill @s