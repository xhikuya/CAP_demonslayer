
execute if score @s ds_formtime matches 2 at @s positioned ^ ^1 ^1 run particle sweep_attack
execute if score @s ds_formtime matches 1 at @s positioned ^ ^ ^1 run particle sweep_attack

function demonslayer:breathing/fire/dance_particle

scoreboard players set @s[scores={ds_fireform=1}] ds_cooldown 20