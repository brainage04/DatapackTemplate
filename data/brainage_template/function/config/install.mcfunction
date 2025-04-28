tellraw @a [{"text":"Brainage's Template ","color": "green"},{"text": "installed.","color": "green"}]

function brainage_template:sounds/click

# Add Triggers
scoreboard objectives add brainage_template.about trigger {"text": "About","color": "green"}
scoreboard objectives add brainage_template.config trigger {"text": "Config","color": "green"}

# Add New Player Joined Flag
scoreboard objectives add brainage_template.new_player_joined dummy
scoreboard players set @a brainage_template.new_player_joined 0

# Add Install Flag
scoreboard objectives add brainage_template.installed dummy
scoreboard players set #brainage_template brainage_template.installed 1