execute positioned ~.7 ~.7 ~.7 as @e[tag=projectile,dx=-1.4,dy=-1.4,dz=-1.4] run kill @s
playsound item.shield.break player @a[distance=..15] ~ ~ ~ 0.7 1 0.2
scoreboard players add @e[tag=ds_owner] ds_lhit 3