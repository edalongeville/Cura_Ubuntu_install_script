# Cura_install_script
This script will install Cura (with icons and .desktop link) on Ubuntu 18.04

## This is intended to be used on Ubuntu 18.04.

# What it does
- Deploys Cura with your other apps (in /usr/bin)
- Creates a .desktop file, so you can access Cura from Gnome, like any other app
- Deploys the icon, required for the above .desktop link

# Instructions
1. Download/Clone this repo
2. Download the linux vesion of Cura from https://ultimaker.com/software/ultimaker-cura
3. Place the downloaded AppImage in the same directory as the install script
4. Run the install script (**root access will be required**). If required, add exec permission with *chmod +x*.

Note: You may have to restart your session for the icon to be properly displayed in gnome

