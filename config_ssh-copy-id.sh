#!/bin/bash

# En la maquina donde se ejecutará la IDE
# mykey es la llave publica de la maquina donde se ejecutará la IDE
USER_T=<user>
HOST_T=<host>
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER_T}@${HOST_T}
eval $(ssh-agent -s)
ssh-add
ssh ${USER_T}@${HOST_T} -A