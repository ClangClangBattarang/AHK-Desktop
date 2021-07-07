# AHK-Desktop
My general, personal AHK script for personal use for Windows 10.

# Install
1. Download repo files from GitHub: https://github.com/SandSculker/AHK-Desktop
2. Move the files anywhere to their own folder.
3. Create a shortcut to the .ahk file.
4. Open run menu (Win+R) and type "shell:startup".
5. Cut and paste the shortcut to that folder.

# Start OBS Studio on Startup
1. Navigate to OBS' 64 bit binary directory, usually "C:\Program Files (x86)\obs-studio\bin\64bit"
2. Find "obs64.exe" and create a shortcut of it.
3. Right click on the created shortcut, left click "Properties".
4. Under the "Shortcut" tab, copy and paste the following to the "Target" field "--minimize-to-tray --startreplaybuffer" (no quotation marks, add a space).
5. Press "Ok"
6. Open run menu (Win+R) and type "shell:startup".
7. Cut and paste the shortcut to that folder.

After doing all that, you're good to go!
