function demonslayer:breathing/thunder/zenitsu/original/boom_init
function demonslayer:breathing/thunder/zenitsu/original/boom
function demonslayer:breathing/thunder/zenitsu/original/boom
function demonslayer:breathing/thunder/zenitsu/original/boom
function demonslayer:breathing/thunder/zenitsu/original/boom
function demonslayer:breathing/thunder/zenitsu/original/boom
function demonslayer:breathing/thunder/zenitsu/original/boom
function demonslayer:breathing/thunder/zenitsu/original/boom
function demonslayer:breathing/thunder/zenitsu/original/boom

scoreboard players set @s ds_cooldown 20
execute at @s run playsound entity.generic.explode player @a ~ ~ ~
effect clear @s slowness
effect give @s slow_falling 1 0 true
tag @s remove immune