execute as @a[predicate=!demonslayer:breathing/water] run clear @s carrot_on_a_stick{WaterBreathing:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{WaterBreathing:1b}}]}] run clear @s carrot_on_a_stick{WaterBreathing:1b}
execute as @a[predicate=!demonslayer:breathing/sun] run clear @s carrot_on_a_stick{SunBreathing:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{SunBreathing:1b}}]}] run clear @s carrot_on_a_stick{SunBreathing:1b}
execute as @a[predicate=!demonslayer:breathing/insect] run clear @s carrot_on_a_stick{InsectBreathing:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{InsectBreathing:1b}}]}] run clear @s carrot_on_a_stick{InsectBreathing:1b}
execute as @a[predicate=!demonslayer:breathing/thunder] run clear @s carrot_on_a_stick{ThunderBreathing:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{ThunderBreathing:1b}}]}] run clear @s carrot_on_a_stick{ThunderBreathing:1b}

schedule function demonslayer:slayer/clear_sword 2s replace