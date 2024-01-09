# Setup
To setup this datapack, open in Visual Studio Code, press Ctrl+Shift+F, and replace `brainage_template` with your namespace (e.g. `brainage_world_setup`). Make sure it's reasonably short but uniquely identifiable, as people will be typing your triggers to use the features in your datapack (also to avoid potentially conflicting namespaces with other datapacks).

In this same Ctrl+Shift+F menu, replace `Brainage's Template` with the name of your datapack (e.g. `Brainage's World Setup`).

Next, in the `pack.mcmeta` file, replace the template description with a brief explanation of what your datapack does (e.g. "Performs world setup commands")

Next, copy the datapack folder (containing `data` and `pack.mcmeta`), navigate to `.minecraft/saves/(your world name)/datapacks` in File Explorer and paste. If the `datapacks` folder does not exist, create it (usually only done if the datapack needs to be loaded before the world generates).

Once the datapack is in your world's `datapacks` folder, type `/reload` in the chat or server console (if applicable). If you cannot do this, ask an operator of the world or server to do so. This will load the datapack and install it upon loading for the first time.

# Features
This datapack has a few useful features to assist in making the user experience as friendly as possible. There are about and config triggers which let players view the about sections and config sections of the datapack.

The about trigger should be used to tell users about important features in the datapack that might not be immediately obvious to the average player. Things such as new recipes, loot table changes and structures should be briefly explained or at least mentioned in this section.

The config trigger allows operators to install and uninstall the datapack if changes are added while the datapack is installed. If you wish to add config options to this trigger, please make sure you use `run_command` for your click events if you want all players to be able to use them, and `suggest_command` if you want only operators to be able to use them. The install/uninstall config options are for operators only - you can take a look at how they are implemented, copy the format and press Ctrl+H to replace `suggest_command` with `run_command` for your new options if necessary.

This datapack also performs an action when a player joins the world for their first time. This can be used to do things such as assigning them to a team or giving them items to start their playthrough.

There is also a 1 second loop where you can put your more computationally-expensive commands, such as NBT data queries or uses of `/execute`.

Have fun!