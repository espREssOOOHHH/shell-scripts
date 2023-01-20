#!/bin/bash

# change sources
echo "Change sources to AliCloud"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
sudo apt-get update

# install software needed
echo "Install software"
sudo apt-get upgrade -y
sudo apt-get install -y zsh g++ make screenfetch git vim openssh-server 
echo "install oh-my-zsh"
sh -c "$(wget -O- https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"


