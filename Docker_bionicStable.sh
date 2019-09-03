#!/bin/sh

sudo apt-get update
#sudo apt-get upgrade
sudo apt-get -y install apt-transport-https \
ca-certificates \
curl \
gnupg \
software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -



