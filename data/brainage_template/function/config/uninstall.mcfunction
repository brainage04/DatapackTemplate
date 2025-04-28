tellraw @a [{"text":"Brainage's Template ","color": "green"},{"text": "uninstalled.","color": "red"}]

function brainage_template:sounds/click

# Remove Triggers
scoreboard objectives remove brainage_template.about
scoreboard objectives remove brainage_template.config

# Remove New Player Joined Flag
scoreboard objectives remove brainage_template.new_player_joined

# Remove Install Flag
scoreboard objectives remove brainage_template.installed