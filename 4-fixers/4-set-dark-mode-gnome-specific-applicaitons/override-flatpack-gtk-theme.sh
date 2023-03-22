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

tput setaf 3;
echo "################################################################"
echo "Override Flatpak GTK Theme"
echo "################################################################"
echo;tput sgr0


sudo flatpak override --filesystem=$HOME/.themes

sudo flatpak override --env=GTK_THEME=Matcha-dark-azul

tput setaf 2;
echo "################################################################"
echo "Done."
echo "################################################################"
echo;tput sgr0