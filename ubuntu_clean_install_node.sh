#!/bin/bash
echo removing nodejs and npm
sudo apt-get purge nodejs npm -y
sudo apt-get remove nodejs npm node
sudo apt-get purge nodejs
sudo rm -rf /usr/local/bin/npm 
sudo rm -rf /usr/local/share/man/man1/node* 
sudo rm -rf /usr/local/lib/dtrace/node.d
rm -rf ~/.npm
rm -rf ~/.node-gyp
sudo rm -rf /opt/local/bin/node
sudo rm -rf /opt/local/include/node
sudo rm -rf /opt/local/lib/node_modules
sudo rm -rf /usr/local/lib/node*
sudo rm -rf /usr/local/include/node*
sudo rm -rf /usr/local/bin/node*
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
# sudo apt-get install -y nodejs
# sudo curl https://raw.githubusercontent.com/ranaFire/script/master/ubuntu_clean_install_node.sh | bash
