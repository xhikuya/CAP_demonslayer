execute at @s if entity @s[nbt={HurtTime:10s}] run playsound item.shield.break player @a ~ ~ ~
execute at @s if entity @s[predicate=core:dmg] run playsound item.shield.break player @a ~ ~ ~

execute if score @s ds_formtime matches 39 run function demonslayer:demon/bda/xhi_denia/scorch/particle_2
execute if score @s ds_formtime matches 38 run function demonslayer:demon/bda/xhi_denia/scorch/particle_3
execute if score @s ds_formtime matches 37 run function demonslayer:demon/bda/xhi_denia/scorch/particle_4
execute if score @s ds_formtime matches 36 run function demonslayer:demon/bda/xhi_denia/scorch/particle_5
execute if score @s ds_formtime matches 35 run function demonslayer:demon/bda/xhi_denia/scorch/particle_6
execute if score @s ds_formtime matches 35..39 run function demonslayer:demon/bda/xhi_denia/scorch/init_check
