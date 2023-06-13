tellraw @s {"text": "                                                                ","color": "gray","strikethrough": true}
tellraw @s {"text": "Brainage's Template | Config","color": "gray"}
tellraw @s {"text": "                                                                ","color": "gray","strikethrough": true}

tellraw @s {"text": "No config section yet.","color": "gray"}
tellraw @s ""

# Install/Uninstall Functions
tellraw @s {"text": "INSTALL DATAPACK","color": "green","hoverEvent": {"action": "show_text","contents": [{"text": "Click to INSTALL this datapack.","color": "green"}]},"clickEvent": {"action": "run_command","value": "/function brainage_template:config/install"}}
tellraw @s {"text": "UNINSTALL DATAPACK","color": "red","hoverEvent": {"action": "show_text","contents": [{"text": "Click to UNINSTALL this datapack.","color": "red"}]},"clickEvent": {"action": "run_command","value": "/function brainage_template:config/uninstall"}}

tellraw @s {"text": "                                                                ","color": "gray","strikethrough": true}

function brainage_template:sounds/click

# Reset Trigger
scoreboard players set @s brainage_template.config 0
scoreboard players enable @s brainage_template.config