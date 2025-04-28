tellraw @a [{"text":"Brainage's Template","color": "green"},{"text": " loaded. | ","color": "yellow"},{"text": "ABOUT","color": "green","hover_event": {"action": "show_text","value": [{"text": "Click to learn about Brainage's Template.\n","color": "white"},{"text": "Executes command \"/trigger brainage_template.about\"","color": "gray"}]},"click_event": {"action": "run_command","command": "/trigger brainage_template.about"}},{"text": " | ","color": "yellow"},{"text": "CONFIG","color": "green","hover_event": {"action": "show_text","value": [{"text": "Click to configure Brainage's Template.\n","color": "white"},{"text": "Executes command \"/trigger brainage_template.config\"","color": "gray"}]},"click_event": {"action": "run_command","command": "/trigger brainage_template.config"}}]

# Check for Install
scoreboard objectives add brainage_template.installed dummy
execute unless score #brainage_template brainage_template.installed matches 1 run function brainage_template:config/install

# Reload 1 Second Loop
schedule clear brainage_template:loops/1_second
function brainage_template:loops/1_second