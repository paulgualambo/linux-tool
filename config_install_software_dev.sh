#!/bin/bash
#
# This script is used to install software development tools.
# ubuntu debian
sudo apt install -y git
sudo apt install -y nc nmap

#Ingresar con el usuario con el quien se va a trabajar

su <user>

# centos amzn fedora 
sudo yum install -y git
sudo yum install -y nc nmap

#Config timezone America/Lima
sudo timedatectl set-timezone "America/Lima"

# Install bash-it
cd ~
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh -y
sed -i 's/'"$BASH_IT_THEME"'/pete/g' ~/.bashrc