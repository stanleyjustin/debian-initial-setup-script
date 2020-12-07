#!/bin/bash

#
# | Configure git
#

git config --global user.name "stanleyjustin"
git config --global user.email "justinhstanley@gmail.com"
git config --global init.defaultBranch main
git config --global color.ui auto

# | keygen

ssh-keygen -C justinhstanley@gmail.com

# | open key in vscodium

codium ~/.ssh/id_rsa.pub