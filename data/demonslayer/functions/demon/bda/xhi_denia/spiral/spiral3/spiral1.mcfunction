scoreboard players add @s var1 1
execute if score @s var1 matches 1 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral3/particle/start
execute if score @s var1 matches 1 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral3/particle/middle
execute if score @s var1 matches 1 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral3/particle/middle2
execute if score @s var1 matches 1 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral3/particle/middle3
execute if score @s var1 matches 1 rotated ~90 0 run function demonslayer:demon/bda/xhi_denia/spiral/spiral3/particle/end

execute if score @s var1 matches 2.. rotated ~90 0 run kill @s
