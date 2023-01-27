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
echo "Install Flatpak Packages"
echo "################################################################"
echo;tput sgr0

flatpak install -y --noninteractive flathub com.bitwarden.desktop &&
flatpak install -y --noninteractive flathub md.obsidian.Obsidian &&
flatpak install -y --noninteractive flathub com.spotify.Client &&
flatpak install -y --noninteractive flathub org.gtkhash.gtkhash &&
flatpak install -y --noninteractive flathub org.gnome.Solanum &&
flatpak install -y --noninteractive flathub com.belmoussaoui.Authenticator &&
flatpak install -y --noninteractive flathub com.logseq.Logseq &&
flatpak install -y --noninteractive flathub io.github.shiftey.Desktop &&
flatpak install -y --noninteractive flathub org.gnome.clocks

tput setaf 2;
echo "################################################################"
echo "Finished Installing  Flatpak Packages"
echo "################################################################"
echo;tput sgr0
