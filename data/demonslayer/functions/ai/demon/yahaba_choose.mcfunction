execute unless score @s uuid matches -1000000.. store result score @s uuid run data get entity @s UUID[0]
tp @s ~ ~ ~ facing entity @p
#execute if predicate demonslayer:30_chance run function demonslayer:demon/bda/yahaba/arrow_1
#execute if predicate demonslayer:30_chance run function demonslayer:demon/bda/yahaba/arrow_2
#execute if predicate demonslayer:30_chance run function demonslayer:demon/bda/yahaba/barrage_init
execute unless score @s ds_formtime matches 1.. run function demonslayer:demon/bda/yahaba/arrow_2