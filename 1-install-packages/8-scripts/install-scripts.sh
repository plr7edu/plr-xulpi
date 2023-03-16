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
echo "Install Starship Prompt"
echo "################################################################"
echo;tput sgr0

# Starship
curl -sS https://starship.rs/install.sh | sh &&

tput setaf 2;
echo "################################################################"
echo "Install Zap (Minimal Zsh Plugin Manager)"
echo "################################################################"
echo;tput sgr0

# Zap minimal zsh plugin manager 
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh)

tput setaf 2;
echo "################################################################"
echo "Macfly (Fly through your shell history.)"
echo "################################################################"
echo;tput sgr0

# Macfly (Fly through your shell history.) 
curl -LSfs https://raw.githubusercontent.com/cantino/mcfly/master/ci/install.sh | sudo sh -s -- --git cantino/mcfly
tput setaf 2;

echo "################################################################"
echo "Copy Tldr Repo"
echo "################################################################"
echo;tput sgr0

tldr -u
