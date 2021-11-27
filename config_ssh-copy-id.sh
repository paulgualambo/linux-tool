#!/bin/bash

# En la maquina donde se ejecutará la IDE
# mykey es la llave publica de la maquina donde se ejecutará la IDE
# Ubicar knonw_hosts.sh en la carpeta de la IDE ~/.ssh/known_hosts, eliminar la ip de la maquina virtual
vim ~/.ssh/known_hosts
USER_T=<user>
HOST_T=<host>
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER_T}@${HOST_T}
eval $(ssh-agent -s)
ssh-add
ssh ${USER_T}@${HOST_T} -A