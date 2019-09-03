#!/bin/bash

sudo apt-get update
sudo apt-get -y install apt-transport-https \
ca-certificates \
curl \
gnupg \
software-properties-common \

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee -a /etc/apt/sources.list.d/additionnal-repositories.list

sudo apt-get update

sudo apt-get -y install docker-ce \
docker-compose

sudo usermod -aG docker $USER

read -p "System need to reboot in order to apply changes. [y,n] : " var1
if [[ $var1 == "y" || $var1 == "Y" || $var1 == "yes" || $var1 == "Yes" ]]
    then
        sudo reboot
else
    echo "If you want to use docker commands without sudo, restart your computer."
fi
