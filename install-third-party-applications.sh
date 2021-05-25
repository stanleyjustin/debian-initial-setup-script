#!/bin/bash

# ADD VSCODE #
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https

# ADD SPOTIFY #
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# ADD VERACRYPT #
sudo wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb

# Add GOOGLE CHROME #
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


# INSTALL PACKAGES #
sudo apt update && sudo apt install code \
  spotify-client \
  ./veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb \
  ./google-chrome-stable_current_amd64.deb



