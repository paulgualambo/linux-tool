#!/bin/bash
#
# This script is used to install software development tools.
# ubuntu debian
sudo apt install -y git
sudo apt install -y nc nmap

# Install bash-it
cd ~
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

# centos amzn fedora 
sudo yum install -y git
sudo yum install -y nc nmap

