tellraw @s [{"text": " | ","color": "yellow"},{"text":"Brainage's Template","color": "green"},{"text": " | ","color": "yellow"},{"text": "ABOUT","color": "green","hover_event": {"action": "show_text","value": [{"text": "Click to learn about Brainage's Template.\n","color": "white"},{"text": "Executes command \"/trigger brainage_template.about\"","color": "gray"}]},"click_event": {"action": "run_command","command": "/trigger brainage_template.about"}},{"text": " | ","color": "yellow"},{"text": "CONFIG","color": "green","hover_event": {"action": "show_text","value": [{"text": "Click to configure Brainage's Template.\n","color": "white"},{"text": "Executes command \"/trigger brainage_template.config\"","color": "gray"}]},"click_event": {"action": "run_command","command": "/trigger brainage_template.config"}},{"text": " | ","color": "yellow"}]

# Flag Player as Joined
scoreboard players set @s brainage_template.new_player_joined 1

# Enable Triggers
scoreboard players enable @s brainage_template.about
scoreboard players enable @s brainage_template.config