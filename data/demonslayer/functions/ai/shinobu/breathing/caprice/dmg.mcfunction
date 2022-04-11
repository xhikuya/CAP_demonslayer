function demonslayer:breathing/insect/damage
execute if entity @s[nbt={OnGround:1b},scores={ds_formtime=6..}] run scoreboard players set @s ds_formtime 5
execute at @s positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,nbt={HurtTime:0s}] at @s run playsound minecraft:item.axe.wax_off player @a
execute at @s positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,nbt={HurtTime:0s},predicate=demonslayer:target_slayer] run scoreboard players operation @s dmg = #ds:temp var1
execute at @s positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,predicate=demonslayer:demon,predicate=!demonslayer:wisteria] run scoreboard players add @s ds_wisteria 80
execute at @s positioned ~1 ~1 ~1 as @e[dx=-2,dy=-2,dz=-2,tag=!ds_this,predicate=!demonslayer:demon] run effect give @s wither 5 1 true

