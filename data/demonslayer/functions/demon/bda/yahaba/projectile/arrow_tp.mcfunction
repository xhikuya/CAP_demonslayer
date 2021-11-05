#tp @e[dx=0,limit=1,sort=nearest,tag=!projectile] ~ ~ ~
execute as @e if score @s uuid = @e[tag=ds_this,limit=1,scores={var4=1}] var3 at @s run tp @s ^ ^ ^1.4 facing entity @e[tag=ds_this,limit=1] eyes
execute as @e if score @s uuid = @e[tag=ds_this,limit=1,scores={var4=2}] var3 at @s run tp @s ^ ^1 ^ facing entity @e[tag=ds_this,limit=1] eyes

#execute as @e[tag=!projectile] if score @s uuid = @e[tag=ds_this,limit=1] var3 run scoreboard players operation @s ai_dmg = @e[tag=ds_this] var2