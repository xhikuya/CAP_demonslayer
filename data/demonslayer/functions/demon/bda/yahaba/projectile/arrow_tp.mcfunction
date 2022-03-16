#tp @e[dx=0,limit=1,sort=nearest,tag=!projectile] ~ ~ ~
#execute as @e unless score @s uuid = @e[tag=ds_this,limit=1,scores={var4=1}] var3 at @s run effect clear @s slow_falling
execute as @e if score @s uuid = @e[tag=ds_this,limit=1,scores={var4=1}] var3 at @s run effect give @s slow_falling 1 0 true
execute as @e if score @s uuid = @e[tag=ds_this,limit=1,scores={var4=1}] var3 at @s facing entity @e[tag=ds_this,limit=1,distance=0.1..] feet run tp @s ^ ^ ^0.8
execute as @e if score @s uuid = @e[tag=ds_this,limit=1,scores={var4=2}] var3 at @s run tp @s ~ ~1 ~
execute as @e if score @s uuid = @e[tag=ds_this,limit=1,scores={var4=2,var1=..40}] var3 at @s run effect give @s slow_falling 1 0 true
#execute as @e[tag=!projectile] if score @s uuid = @e[tag=ds_this,limit=1] var3 run scoreboard players operation @s ai_dmg = @e[tag=ds_this] var2