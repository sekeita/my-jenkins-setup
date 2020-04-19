#!/bin/bash

## agent connectivity
yum update -y
yum install -y openjdk-8-jdk

## docker
yum install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/fedora/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/fedora/31 \
   $(lsb_release -cs) \
   stable"

yum update -y
yum install -y docker-ce

groupadd docker
usermod -aG docker fedora
