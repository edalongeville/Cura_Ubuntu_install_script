#!/bin/bash
# This script installs Cura on Ubuntu 18.04

FILE="Ultimaker_Cura-4.6.1.AppImage"
ICON="cura.png"
DESKFILE="cura.desktop"
INSTALL_DIR="/usr/bin/cura"
ICONS_DIR="/usr/share/icons/hicolor"
DESKFILES_DIR="/usr/share/applications"

# Ensure Cura archive is here
if test -f "$FILE"; then
	echo "Cura appimage found"
else
	echo "Please download Cura AppImage from their website and place the archive in the same folder as this script"
	echo "https://ultimaker.com/software/ultimaker-cura"
	exit 1
fi

# Ensure icon is here
if ! test -f "$ICON"; then
	echo "Icon not found! $ICON should be in the same folder as this script"
	exit 1
fi

# Extract Cura to install dir
sudo mkdir $INSTALL_DIR
sudo mv $FILE $INSTALL_DIR
sudo chmod +x $INSTALL_DIR/$FILE

# Deploy icons
## 32x32
sudo convert -resize 32x32 $ICON $ICONS_DIR/32x32/apps/$ICON
## 48x48
sudo convert -resize 48x48 $ICON $ICONS_DIR/48x48/apps/$ICON
## 64x64
sudo convert -resize 64x64 $ICON $ICONS_DIR/64x64/apps/$ICON
## 128x128
sudo cp $ICON $ICONS_DIR/128x128/apps/$ICON

# Deploy desktop file (Gnome menu entry)
sudo cp $DESKFILE $DESKFILES_DIR/$DESKFILE

echo "Cura installation complete!"
