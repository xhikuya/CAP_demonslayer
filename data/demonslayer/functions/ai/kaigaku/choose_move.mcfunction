function demonslayer:ai/slayer_core/range


execute if entity @s[tag=melee,predicate=demonslayer:40_chance,scores={ds_formtime=0}] at @s run function demonslayer:ai/kaigaku/thunder/second_form/init
execute if entity @s[tag=melee,predicate=demonslayer:40_chance,scores={ds_formtime=0}] at @s run function demonslayer:ai/kaigaku/thunder/fifth_form/init
execute if entity @s[tag=melee,predicate=demonslayer:20_chance,scores={ds_formtime=0}] at @s run function demonslayer:ai/kaigaku/thunder/third_form/init
execute if entity @s[tag=closerange,predicate=demonslayer:tanj_chance,scores={ds_formtime=0}] run function demonslayer:ai/kaigaku/thunder/second_form/init
execute if entity @s[tag=closerange,predicate=demonslayer:tanj_chance,scores={ds_formtime=0}] run function demonslayer:ai/kaigaku/thunder/third_form/init
execute if entity @s[tag=midrange,scores={ds_formtime=0}] run function demonslayer:ai/kaigaku/thunder/third_form/init


scoreboard players set @s[tag=!longrange] var1 0

