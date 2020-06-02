#!/bin/bash
# This script uninstalls Cura on Ubuntu 20.04

ICON="cura.png"
DESKFILE="cura.desktop"
INSTALL_DIR="/usr/bin/cura"
ICONS_DIR="/usr/share/icons/hicolor"
DESKFILES_DIR="/usr/share/applications"

# Delete install dir
sudo rm -rf mkdir $INSTALL_DIR

# Delete icons
## 32x32
sudo rm $ICONS_DIR/32x32/apps/$ICON
## 48x48
sudo rm $ICONS_DIR/48x48/apps/$ICON
## 64x64
sudo rm $ICONS_DIR/64x64/apps/$ICON
## 128x128
sudo rm $ICONS_DIR/128x128/apps/$ICON

# Deploy desktop file (Gnome menu entry)
sudo rm $DESKFILES_DIR/$DESKFILE

echo "Cura uninstallation complete!"
