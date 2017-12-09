#!/bin/sh

#########################################################################################
#                                                                                       #
# bashrc.sh                                                                             #
#                                                                                       #
# A script that moves ~/bashrc to ~/.bashrc.                                            #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/config/.bashrc"
DESTINATION="/home/vagrant/.bashrc"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  mv -f "$SOURCE" "$DESTINATION"
else
  echo  "${BLUE}${DESTINATION} has been crated, already${NC}"
fi
