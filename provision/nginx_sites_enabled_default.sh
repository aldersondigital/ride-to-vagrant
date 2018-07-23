#!/bin/sh

#########################################################################################
#                                                                                       #
# nginx_sites_enabled_default.sh                                                        #
#                                                                                       #
# A script that moves ~/sites-enabled-default to /etc/nginx/sites-enabled/default.      #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/config/nginx-sites-enabled-default"
DESTINATION="/etc/nginx/sites-enabled/default"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  
  mv -f "$SOURCE" "$DESTINATION"
else

  echo  "${BLUE}${DESTINATION} has been created, already${NC}"
fi
