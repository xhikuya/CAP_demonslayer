scoreboard players remove @s stamina 20
scoreboard players add @s stamina_cool 30
scoreboard players set @s ds_cooldown 10
scoreboard players set @s ds_formtime 4

execute anchored eyes positioned ^ ^ ^1.5 run function demonslayer:demon/bda/xhi_denia/plasma/slash
playsound entity.generic.explode player @a ~ ~ ~ 0.8
playsound entity.blaze.shoot player @a ~ ~ ~
effect give @s slowness 1 0 true