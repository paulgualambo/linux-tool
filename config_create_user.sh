#!/bin/bash

# References
# https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/

#Create user and password
USER=paul
PASSWORD=<coloque_cadena>
COMMENT="Paul Gualambo paul.gualambo@gmail.com"

#Para ubuntu debian
# -m create home directory
sudo useradd -c "${COMMENT}" -m $USER && echo $USER:$PASSWORD | sudo chpasswd

#Add user to sudoers ubuntu debian
sudo usermod -aG sudo $USER 

#Add user to sudoers centos red hat amzn
sudo usermod -aG wheel $USER

#delete
#sudo deluser --remove-home $USER