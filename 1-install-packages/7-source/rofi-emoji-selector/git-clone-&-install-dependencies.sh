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
echo "Git clone rofi-emoji repository"
echo "################################################################"
echo;tput sgr0

git clone https://github.com/Mange/rofi-emoji.git

tput setaf 2;
echo "################################################################"
echo "Install all necessary dependencies "
echo "################################################################"
echo;tput sgr0

sudo apt install rofi-dev autoconf automake libtool-bin libtool -y
