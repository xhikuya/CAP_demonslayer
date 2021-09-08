scoreboard players enable @s ds_racechoice
tellraw @s {"text": "[Demon Slayer] - Choose Your Race","color": "yellow"}
tellraw @s {"text": "Human","clickEvent": {"action":"run_command","value": "/trigger ds_racechoice set 1"},"color": "gold"}
tellraw @s {"text": "Demon","clickEvent": {"action":"run_command","value": "/trigger ds_racechoice set 2"},"color": "red"}


