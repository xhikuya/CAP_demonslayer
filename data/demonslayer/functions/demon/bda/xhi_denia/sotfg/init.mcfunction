scoreboard players remove @s stamina 40
scoreboard players add @s stamina_cool 30
scoreboard players set @s ds_cooldown 30

execute anchored eyes positioned ^ ^ ^4 positioned ~ ~10 ~ run function demonslayer:demon/bda/xhi_denia/sotfg/slash_1
execute anchored eyes positioned ^ ^ ^4 run particle explosion

playsound entity.generic.explode player @a ~ ~ ~ 0.8
playsound entity.blaze.shoot player @a ~ ~ ~
effect give @s slowness 1 0 true