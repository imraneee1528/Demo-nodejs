#! /bin/bash
###update server for new installation###
sudo apt-get update
#### nvm 
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
####################################################################
if [ -d "$HOME/.nvm" ]; then
  # export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  export NVM_DIR="$HOME/.nvm"

  # This loads nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

  # This loads nvm bash_completion
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi
################################################333
source ~/.profile
#nvm ls-remote
nvm install v16.3.0
#install npm#####
sudo apt install npm
npm install pm2@latest -g
pm2 startup systemd
##### change your user name root  #############
sudo env PATH=$PATH:$HOME/.nvm/versions/node/v16.3.0/bin $HOME/.nvm/versions/node/v16.3.0/lib/node_modules/pm2/bin/pm2 startup systemd -u root --hp /root
pm2 save --force
#system start
sudo systemctl start pm2-root
# system status check
sudo systemctl start pm2-root
