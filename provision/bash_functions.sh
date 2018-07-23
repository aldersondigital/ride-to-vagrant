#!/bin/sh


#########################################################################################
#                                                                                       #
# bash_functions.sh                                                                     #
#                                                                                       #
# A script that moves ~/bash_functions to ~/.bash_functions.                            #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/config/.bash_functions"
DESTINATION="/home/vagrant/.bash_functions"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  mv -f "$SOURCE" "$DESTINATION"
else
  echo  "${BLUE}${DESTINATION} has been created, already${NC}"
fi
