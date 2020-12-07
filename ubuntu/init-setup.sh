#!/bin/bash

#-------------------------#
# | Add backports/repos
#-------------------------#

# vs-codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list

# spotify
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
	codium \
	spotify-client \
	clamav \
	clamtk \
	neofetch \
	keepassxc \
	libreoffice \
	filezilla \
	vlc \
	git \
	curl \
	flameshot	



