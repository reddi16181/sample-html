#! /bin/bash

sudo apt-get update

sudo apt-get install openjdk-11-jdk -y

sudo apt-get update

sudo apt install docker.io -y

:'
<< EOL

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt update

apt-cache policy docker-ce

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

EOL '

sudo systemctl status docker

sudo usermod -aG docker ubuntu

su - ubuntu

sudo usermod -aG docker ubuntu
