execute unless data entity @s SelectedItem.tag.Cap{Form:"Hinokami"} run function demonslayer:breathing/water/tanjiro_sword
execute if data entity @s SelectedItem.tag.Cap{Form:"Hinokami"} run function demonslayer:breathing/sun/tanjiro_sword
function demonslayer:breathing/essentials/hitbox
execute if entity @s[tag=ds_cattack] at @s run function demonslayer:breathing/water/slash_custom

