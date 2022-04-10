tag @e[sort=nearest,limit=1] add check
execute if predicate demonslayer:look_at_hp run title @s actionbar {"nbt":"Health","entity":"@e[tag=check,limit=1]"}
tag @e remove check