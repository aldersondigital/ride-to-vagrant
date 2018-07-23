#!/bin/sh

#########################################################################################
#                                                                                       #
# nginx_conf.sh                                                                         #
#                                                                                       #
# A script that moves ~/nginx.conf to /etc/nginx/nginx.conf.                            #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/config/nginx.conf"
DESTINATION="/etc/nginx/nginx.conf"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  
  mv -f "$SOURCE" "$DESTINATION"
else
  
  echo  "${BLUE}${DESTINATION} has been created, already${NC}"
fi
