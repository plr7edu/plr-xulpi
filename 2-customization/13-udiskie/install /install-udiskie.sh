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
echo "Remove thunar-volman on Xfce"
echo "################################################################"
echo;tput sgr0

sudo nala remove thunar-volman -y

tput setaf 3;
echo "################################################################"
echo "Install Udiskie on Xfce"
echo "################################################################"
echo;tput sgr0

sudo nala install udisks2 -y

#udiskie

tput setaf 2;
echo "###########################################################################"
echo "Add "udiskie -s" on xfce4 Application Autostart"
echo "###########################################################################"
echo;tput sgr0

