#!/bin/sh

#########################################################################################
#                                                                                       #
# ssh_key.sh                                                                            #
#                                                                                       #
# A script that generates a ssh key (id_rsa).                                           #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SSH_KEY_DIR="/home/vagrant/.ssh" 
SSH_KEY_LOCATION="$SSH_KEY_DIR/id_rsa"
SSH_PUBLIC_KEY_LOCATION="$SSH_KEY_LOCATION.pub"

if [ ! -f "$SSH_KEY_LOCATION" ]; then
  echo  "${GREEN}Creating $SSH_KEY_LOCATION${NC}"
  
  ssh-keygen -b 2048 -t rsa -f "$SSH_KEY_LOCATION" -P "" -q
  chmod 775 "$SSH_KEY_LOCATION"
else 
  
  echo  "${BLUE}$SSH_KEY_LOCATION in place, already${NC}"
fi
