# getSpawnPoints

A simple script that grabs the player's current position and saves it to a json file.

# Install:

In the resources folder, create a folder & extract the contents of the downloaded zip into the new folder (you can name the folder whatever you want, in my case I named the folder getSpawnPoints so you can type "start getSpawnPoints" in your console to start the resource).

# Usage:

Once in-game and the resource is started, press the tilde key (`) to obtain the current position of the player.

- The current position will be shown in the F8/server console when (`) has been pressed.
- Position will also be saved to a json file, which you can locate in your resource folder where you extracted the zip. \resources\[youResourceFolder]\getSpawnPoints\positions.json
- Each new position acquired will update the JSON file in a table for that particular session, it will NOT create multiple JSON files.
- If you delete the positions.json file, it will automatically create a new one.
