#!/bin/bash
sudo apt update

printf "\n\n\n\nInstalling git"
sudo apt install git
printf "n\n\n\nInstalling docker"

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get -y install docker-engine docker-compose

# add current user to docker group so there is no need to use sudo when running docker
sudo usermod -aG docker $(whoami)
