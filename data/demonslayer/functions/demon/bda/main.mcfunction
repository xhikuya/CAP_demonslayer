execute if data entity @s SelectedItem.tag{Cap:{ID:1b}} at @s run function demonslayer:demon/bda/nezuko/main
execute if data entity @s SelectedItem.tag{Cap:{ID:2b}} at @s run function demonslayer:demon/bda/xhi_denia/main
execute if data entity @s SelectedItem.tag{Cap:{ID:3b}} at @s run function demonslayer:demon/bda/yahaba/main
execute if data entity @s SelectedItem.tag{Cap:{ID:4b}} at @s run function demonslayer:demon/bda/basic/main
execute if data entity @s SelectedItem.tag{Cap:{ID:5b}} at @s run function demonslayer:demon/bda/temari/main
execute if data entity @s SelectedItem.tag{Cap:{ID:6b}} at @s run function demonslayer:demon/bda/compass/main

execute unless predicate core:macro run function demonslayer:breathing/essentials/moving_back
execute if predicate core:macro run function demonslayer:breathing/essentials/moving_back2

execute if predicate core:macro if predicate core:shift_click run scoreboard players set @s ds_swap 7
execute if predicate core:macro if predicate core:shift_click run scoreboard players set @s s_click 0
