#!/bin/bash

# References
# https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/

#Create user and password
USER=paul
EMAIL=<coloque email>
PASSWORD=<coloque_cadena>
COMMENT="Paul Gualambo Giraldo ${EMAIL}"

#Para ubuntu debian
# -m create home directory
sudo useradd -c "${COMMENT}" -m $USER && echo $USER:$PASSWORD | sudo chpasswd

#Add user to sudoers ubuntu debian
sudo usermod -aG sudo $USER 

#Add user to sudoers centos red hat amzn
sudo usermod -aG wheel $USER

#delete
#sudo deluser --remove-home $USER

# En la maquina donde se ejecutará la IDE
# mykey es la llave publica de la maquina donde se ejecutará la IDE
ssh-copy-id -i ~/.ssh/mykey user@host
ssh user@host -A