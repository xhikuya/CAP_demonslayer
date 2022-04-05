scoreboard players add @e[tag=ds_owner] ds_lhit 6
playsound item.shield.break player @a[distance=..15] ~ ~ ~ 0.7 1 0.2
execute as @e[tag=ds_owner,type=player,predicate=demonslayer:breathing/bamboo] run tellraw @s {"text": "parry"}
execute as @e[tag=ds_owner,type=player] run tell @p[distance=..10,tag=!ds_owner] {"text": "parried"}
