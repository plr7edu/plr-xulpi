#!/bin/bash
##################################################################################################################
# Author    : plr
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

tput setaf 2;
echo "################################################################"
echo "Copy Flatpak Desktop Files"
echo "################################################################"
echo;tput sgr0

sudo cp -rf desktop-files/org.gnome.Solanum.desktop /var/lib/flatpak/app/org.gnome.Solanum/current/19477b2d5c6a279f5752ce57d75abe00ff4caab375363538a5f0c12b3e569d14/export/share/applications/

