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
echo "Adding PPAs"
echo "################################################################"
echo;tput sgr0


sudo add-apt-repository ppa:jonaski/strawberry -y &&
sudo add-apt-repository ppa:appimagelauncher-team/stable -y &&
sudo add-apt-repository ppa:apandada1/foliate -y &&
sudo add-apt-repository ppa:nextcloud-devs/client -y &&
sudo add-apt-repository ppa:wereturtle/ppa -y &&
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator -y &&
sudo add-apt-repository ppa:xubuntu-dev/extras -y &&

#Icon themes
sudo add-apt-repository ppa:papirus/papirus -y &&
sudo add-apt-repository ppa:daniruiz/flat-remix -y &&

# Kvantum 
sudo add-apt-repository ppa:papirus/papirus -y &&

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list


# Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# Hblock
curl -o /tmp/hblock 'https://raw.githubusercontent.com/hectorm/hblock/v3.4.0/hblock' \
  && echo '4031d86cd04fd7c6cb1b7e9acb1ffdbe9a3f84f693bfb287c68e1f1fa2c14c3b  /tmp/hblock' | shasum -c \
  && sudo mv /tmp/hblock /usr/local/bin/hblock \
  && sudo chown 0:0 /usr/local/bin/hblock \
  && sudo chmod 755 /usr/local/bin/hblock
  
# Glow 
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
 

tput setaf 3;
echo "################################################################"
echo "Update Repositories"
echo "################################################################"
echo;tput sgr0

sudo apt update

tput setaf 3;
echo "################################################################"
echo "Installing Packages"
echo "################################################################"
echo;tput sgr0


sudo nala install strawberry -y
sudo nala install appimagelauncher -y
sudo nala install foliate -y
sudo nala install nextcloud-client -y
sudo nala install ghostwriter -y
sudo nala install cryptomator -y
sudo nala install sublime-text -y
sudo nala install signal-desktop -y
sudo nala install glow -y
sudo nala install papirus-icon-theme -y
sudo nala install flat-remix -y
sudo nala install qt5-style-kvantum qt5-style-kvantum-themes -y
sudo nala install xfce4-docklike-plugin -y


tput setaf 2;
echo "################################################################"
echo "Finished adding PPAs and Installing Applications"
echo "################################################################"
echo;tput sgr0

exit 0
