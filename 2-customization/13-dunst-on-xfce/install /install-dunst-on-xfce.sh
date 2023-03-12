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
echo "Insatll Dunst on Xfce"
echo "################################################################"
echo;tput sgr0

sudo nala install dunst -y

sudo mv /usr/share/dbus-1/services/org.xfce.xfce4-notifyd.Notifications.service /usr/share/dbus-1/services/org.xfce.xfce4-notifyd.Notifications.service.disabled &&


sudo cp -rf dunst.service ~/usr/share/dbus-1/services/

tput setaf 2;
echo "###########################################################################"
echo "Untick Xfce Notificication Daemon (xfce4-notifyd) on Application Autostart"
echo "###########################################################################"
echo;tput sgr0


