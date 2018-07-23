#!/bin/sh

#########################################################################################
#                                                                                       #
# viminfo.sh                                                                            #
#                                                                                       #
# A script that moves .viminfo into place.                                              #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/config/.viminfo"
DESTINATION="/home/vagrant/.viminfo"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  
  mv -f "$SOURCE" "$DESTINATION"
else
  
  echo  "${BLUE}${DESTINATION} has been created, already${NC}"
fi
