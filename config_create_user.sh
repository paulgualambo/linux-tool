#!/bin/bash

# References
# https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/

#Execute remote script
#wget -O - https://raw.githubusercontent.com/paulgualambo/linux-tool/main/config_create_user.sh| bash -s 'RED_HAT', 'paul', 'paul.gualambo@gmail.com' ,'P@ul1984'

#CONST
DEBIAN="DEBIAN"
RED_HAT="RED_HAT"

#Create user and password
TYPE_DISTRO=${1}
USER=${2}
EMAIL=${3}
PASSWORD=${4}
COMMENT="${USER} ${EMAIL}"

# -m create home directory
sudo useradd -c "${COMMENT}" -m ${USER} && echo ${USER}:${PASSWORD} | sudo chpasswd

#Para ubuntu debian
if [ "$TYPE_DISTRO" = "$DEBIAN" ]
then
    #Add user to sudoers ubuntu debian
    sudo usermod -aG sudo ${USER} 
fi

#Add user to sudoers centos red hat amzn
if [ "$TYPE_DISTRO" = "$RED_HAT" ]
then
    sudo usermod -aG wheel ${USER}
fi


#delete
#sudo deluser --remove-home $USER
