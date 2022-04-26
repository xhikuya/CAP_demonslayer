scoreboard players add @s var1 1
execute if entity @s[scores={var1=5..}] run tp @s ~ -900 ~
kill @s[scores={var1=5..}]
