#!/bin/bash

#-------------------------#
# | Install dependencies
#-------------------------#

sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y install \
	curl \
	git	

#-------------------------#
# | Add backports/repos
#-------------------------#

# vs-codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

#-------------------------#
# | Update sources
#-------------------------#

sudo apt-get -y update

#-------------------------#
# | Install packages
#-------------------------#

sudo apt-get -y install \
	firefox-esr \
	codium \
	spotify-client \
	clamav \
	clamtk \
	neofetch \
	cowsay \
	keepassxc \
	libreoffice \
	filezilla \
	vlc \
	flameshot \
	chromium \
	gnome-shell-extension-appindicator \
	firmware-iwlwifi

#-------------------------#
# | Install nvm through curl
#-------------------------#

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

command -v nvm

#if above command returns "nvm: command not found" close and reopen

#-------------------------#
# | Install nvm through curl
#-------------------------#

nvm install node

nvm use node

node -v

#-------------------------#
# | Install jasmine through npm
#-------------------------#

npm install -g jasmine

#-------------------------#
# | Configure git
#-------------------------#

git config --global user.name "stanleyjustin"
git config --global user.email "justinhstanley@gmail.com"
git config --global init.defaultBranch main
git config --global color.ui auto

# | keygen

ssh-keygen -C justinhstanley@gmail.com

# | open key in vscodium

codium ~/.ssh/id_rsa.pub


