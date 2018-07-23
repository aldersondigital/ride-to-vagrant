#!/bin/sh

#########################################################################################
#                                                                                       #
# vimrc.sh                                                                              #
#                                                                                       #
# A script that moves .vimrc into place.                                                #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/.vimrc"
DESTINATION="/home/vagrant/.vimrc"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  
  mv -f "$SOURCE" "$DESTINATION"
else

  echo  "${BLUE}${DESTINATION} has been created, already${NC}"
fi
