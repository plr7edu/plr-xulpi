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
echo "Fix Sinhala fonts"
echo "################################################################"
echo;tput sgr0

# Remove Ugly sinhala fonts

sudo rm -rf /usr/share/fonts/truetype/freefont/FreeSerif.ttf /usr/share/fonts/truetype/freefont/FreeSerifBold.ttf
sudo rm -rf /usr/share/fonts/truetype/sinhala

echo "done."

