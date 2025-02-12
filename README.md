# Avorion Server Assistant
Previously known as the anti-hang script :)

## Use Case
The script was made for a dedicated avorion server VM, no considerations were made for other circumstances.

The script uses the myserver.bat that you created if you followed this tutorial:

https://avorion.fandom.com/wiki/Setting_up_a_server#Setting_up_the_server_(Windows)

If you run the server over the GUI this script won't work.

## Installation 
The script requires Autohotkey v2. -> https://www.autohotkey.com/v2/

The script needs to be placed in the avorion server folder (C:\steamcmd\steamapps\common\AvorionServer) or whereever that is for you

The script works off of the myserver.bat that you modified for your server - Open the "Anti_hang_v2.ahk" file with a text editor. In the USER AREA, change the <avorion_server.bat> to whatever you named yours

## Usage
Simply run the script.

There is a UI indicator in the top left to show that the script is running.

If your server is not running when you run the script, it will launch the server for you.

If the Script encounters an issue it will send a message and stop.

Hitting ESC will stop the script.
