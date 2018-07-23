#!/bin/sh

#########################################################################################
#                                                                                       #
# bash_aliases.sh                                                                       #
#                                                                                       #
# A script that moves ~/bash_aliases to ~/.bash_aliases.                                #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/config/.bash_aliases"
DESTINATION="/home/vagrant/.bash_aliases"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  mv -f "$SOURCE" "$DESTINATION"
else
  echo  "${BLUE}${DESTINATION} has been created, already${NC}"
fi
