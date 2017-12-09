#!/bin/sh

#########################################################################################
#                                                                                       #
# footer.sh                                                                             #
#                                                                                       #
# A script that displays 'footer' information.                                          #
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

echo "${BLUE}If required, please add the following public key to your SoftCogs BitBucket account${NC}"
echo "${BLUE}***********************************************************************************${NC}"
cat  "$SSH_PUBLIC_KEY_LOCATION"
echo "${BLUE}***********************************************************************************${NC}"
echo "${BLUE}Once you have added the key, login to the VM using 'vagrant ssh'."
echo "${BLUE}Then (from within the VM) run 'vvsetup' (video-visit setup).${NC}"
