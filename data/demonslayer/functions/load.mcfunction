kill @e[tag=cap_ds]
execute unless entity @e[tag=cap_ds] run summon area_effect_cloud ~ ~ ~ {Tags:["cap_ds","addon"],CustomName:'{"text":"Demon Slayer","color": "dark_red"}',Duration:10000}
scoreboard players set @e[tag=cap_ds] addon 2
schedule function demonslayer:slayer/advancements_s 10s replace
schedule function demonslayer:demon/advancements_s 10s replace
schedule function demonslayer:slayer/clear_sword 2s replace
schedule function demonslayer:refinery 10s replace


schedule function demonslayer:spawn 3s replace


scoreboard objectives add ds_finalselection dummy
scoreboard objectives add ds_finals_cool dummy

scoreboard objectives add ds_sleepcool dummy

scoreboard objectives add ds_insectform dummy
scoreboard objectives add ds_waterform dummy
scoreboard objectives add ds_sunform dummy
scoreboard objectives add ds_thunderform dummy


scoreboard objectives add ds_ghostswordc dummy
scoreboard objectives add ds_bdamove dummy
scoreboard objectives add ds_motx dummy
scoreboard objectives add ds_motz dummy
scoreboard objectives add ds_motx2 dummy
scoreboard objectives add ds_motz2 dummy


scoreboard objectives add ds_cooldown dummy
scoreboard objectives add ds_swap dummy
scoreboard objectives add ds_formtime dummy
scoreboard objectives add ds_lhit dummy
scoreboard objectives add ds_death deathCount
scoreboard objectives add ds_bloodxp dummy
scoreboard objectives add ds_blood dummy
scoreboard objectives add ds_kill custom:mob_kills
scoreboard objectives add ds_kill2 custom:player_kills
scoreboard objectives add ds_wisteria dummy
scoreboard objectives add ds_wist_tick dummy
scoreboard objectives add ds_wist_break mined:lilac
scoreboard objectives add ds_demonkill dummy
scoreboard objectives add ds_ait dummy




team add ds_collide "no collision"
team modify ds_collide collisionRule never
scoreboard objectives add ds_racechoice trigger


