kill @e[tag=cap_ds]
execute unless entity @e[tag=cap_ds] run summon area_effect_cloud ~ ~ ~ {Tags:["cap_ds","addon"],CustomName:'{"text":"Demon Slayer","color": "dark_red"}',Duration:10000}
scoreboard players set @e[tag=cap_ds] addon 2


scoreboard objectives add ds_sleepcool dummy


scoreboard objectives add ds_waterform dummy
scoreboard objectives add ds_fireform dummy
scoreboard objectives add ds_bdamove dummy


scoreboard objectives add ds_cooldown dummy
scoreboard objectives add ds_swap dummy
scoreboard objectives add ds_formtime dummy
scoreboard objectives add ds_death deathCount
scoreboard objectives add ds_bloodxp dummy
scoreboard objectives add ds_blood dummy
scoreboard objectives add ds_kill custom:mob_kills
scoreboard objectives add ds_kill2 custom:player_kills
scoreboard objectives add ds_wisteria dummy
scoreboard objectives add ds_wist_tick dummy
scoreboard objectives add ds_wist_break mined:lilac





scoreboard objectives add ds_racechoice trigger


