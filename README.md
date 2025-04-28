# Setup
To setup this datapack, you can click `Use this template`, fork this repository or click the `Download ZIP` button that appears after clicking the `<> Code` button.

Once unzipped and open in Visual Studio Code, press Ctrl+Shift+H, and replace `brainage_template` with your namespace (e.g. `brainage_world_setup`) and replace `Brainage's Template` with the name of your datapack (e.g. `Brainage's World Setup`). Make sure it's reasonably short but uniquely identifiable, as people will be typing your triggers to use the features in your datapack (also to avoid potentially conflicting namespaces with other datapacks).

Be sure to also rename the `brainage_template` folder to what you replaced the `brainage_template` occurences in files with (e.g. `brainage_world_setup`)

Next, in the `pack.mcmeta` file, replace the template description (`Datapack Template by Brainage`) with a brief explanation of what your datapack does (e.g. `Performs world setup commands`). You may also optionally add a thumbnail to the datapack by adding an image to the root folder with the name `pack.png`.

Next, copy the datapack folder (containing `data`, `README.md` and `pack.mcmeta`), navigate to your world file (usually `.minecraft/saves/(your world name)`) in File Explorer, create the `datapacks` folder if it does not exist, and paste the datapack in the `datapacks` folder.

Once the datapack is in your world's `datapacks` folder, execute the `/reload` command to load the datapack.

If your datapack adds certain features such as dimensions, structures, features or changes to world generation, `/reload` will have no effect. You will need to restart the server to see these changes.

# Features
This datapack has a few useful features to assist in making the user experience as friendly as possible. There are about and config triggers which let players view the about sections and config sections of the datapack.

The about trigger should be used to tell users about important features in the datapack that might not be immediately obvious to the average player. Things such as new recipes, loot table changes and structures should be briefly explained or at least mentioned in this section.

The config trigger allows operators to install and uninstall the datapack if changes are added while the datapack is installed. If you wish to add config options to this trigger, please make sure you use `run_command` for your click events if you want all players to be able to use them, and `suggest_command` if you want only operators to be able to use them. The install/uninstall config options are for operators only - you can take a look at how they are implemented, copy the format and press Ctrl+H to replace `suggest_command` with `run_command` for your new options if necessary.

This datapack also executes a function when a player joins the world for their first time. This can be used to do things such as assigning them to a team or giving them items to start their playthrough.

There is also a 1 second loop where you can put your more computationally-expensive commands, such as NBT data queries or uses of `/execute`.
