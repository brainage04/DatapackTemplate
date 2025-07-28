# About
My template for Minecraft datapacks. The easiest way to use this is to click `Use this template` and GitHub Actions will take care of the rest for you.

However, if you are using a Linux-based operating system, it is possible to clone this repository, and perform a refactor by triggering the `init.sh` script like so:
```shell
./init.sh <owner> <datapack_name> 
```

Where `<owner>` is your GitHub username and `<datapack_name>` is your GitHub repository name/datapack name.

This script is designed to work both with GitHub Actions and manual usage, and will safely delete:
  - Leftover unused folders that are not tracked by Git (src/main/java/com/example and src/main/resources/examplemod).
  - The .github folder and script file after successful execution.

# Features
This datapack has a few useful features to assist in making the user experience as friendly as possible. There are about and config triggers which let players view the about sections and config sections of the datapack.

The about trigger should be used to tell users about important features in the datapack that might not be immediately obvious to the average player. Things such as new recipes, loot table changes and structures should be briefly explained or at least mentioned in this section.

The config trigger allows operators to install and uninstall the datapack if changes are added while the datapack is installed. If you wish to add config options to this trigger, please make sure you use `run_command` for your click events if you want all players to be able to use them, and `suggest_command` if you want only operators to be able to use them. The install/uninstall config options are for operators only - you can take a look at how they are implemented, copy the format and press Ctrl+H to replace `suggest_command` with `run_command` for your new options if necessary.

This datapack also executes a function when a player joins the world for their first time. This can be used to do things such as assigning them to a team or giving them items to start their playthrough.

There is also a 1 second loop where you can put your more computationally-expensive commands, such as NBT data queries or uses of `/execute`.
