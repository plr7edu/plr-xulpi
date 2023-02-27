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
echo "Install Zap (A minimal zsh plugin manager)"
echo "################################################################"
echo;tput sgr0

curl -sS https://starship.rs/install.sh | sh &&

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh)
