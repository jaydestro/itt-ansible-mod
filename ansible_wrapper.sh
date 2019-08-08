#!/bin/bash

export DIR="/home/$USER/.ansible"
export SSHUSER="jaygordon"
echo -e "[hosts]\n$ip" > $DIR/hosts
touch  $DIR/hosts


# ip of host
echo -n "Enter your IP and press [ENTER]: "
read ip

#Add hosts
echo -e "[hosts]\n$ip" > $DIR/hosts
# install ansible roles

ansible-galaxy install ocha.dotnet-core
ansible-galaxy install undergreen.mongodb
ansible-galaxy install geerlingguy.nodejs
ansible-galaxy install simplifield.postgres

ansible-playbook -u $SSHUSER install_monolith.yaml --inventory-file=~/.ansible/hosts

