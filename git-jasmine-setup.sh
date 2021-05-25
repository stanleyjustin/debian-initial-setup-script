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

code ~/.ssh/id_rsa.pub
