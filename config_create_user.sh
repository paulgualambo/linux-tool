#!/bin/bash

# References
# https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/

#Create user and password
USER=${1}
EMAIL=${2}
PASSWORD=${3}
COMMENT="${USER} ${EMAIL}"

#Para ubuntu debian
# -m create home directory
sudo useradd -c "${COMMENT}" -m $USER && echo ${USER}:${PASSWORD} | sudo chpasswd

#Add user to sudoers ubuntu debian
sudo usermod -aG sudo ${USER} 

#Add user to sudoers centos red hat amzn
sudo usermod -aG wheel ${USER}

#delete
#sudo deluser --remove-home $USER

# En la maquina donde se ejecutará la IDE
# mykey es la llave publica de la maquina donde se ejecutará la IDE
# Eliminar manualmente en el archivo los host ha registrar
# ~/.ssh/known_hosts
USER_T=paul
HOST_T=192.168.1.170
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER_T}@${HOST_T}
eval $(ssh-agent -s)
ssh-add
ssh ${USER_T}@${HOST_T} -A
