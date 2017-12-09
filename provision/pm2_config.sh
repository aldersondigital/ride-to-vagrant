#!/bin/sh

#########################################################################################
#                                                                                       #
# pm2_config.sh                                                                         #
#                                                                                       #
# A script that moves ~/pm2.config.js to /var/www/apps/pm2.config.js.                   #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

SOURCE="/home/vagrant/config/pm2.config.js"
DESTINATION="/var/www/apps/pm2.config.js"

if [ -f "$SOURCE" ]; then
  echo  "${GREEN}Creating ${DESTINATION}${NC}"
  
  mv -f "$SOURCE" "$DESTINATION"
else

  echo  "${BLUE}${DESTINATION} has been crated, already${NC}"
fi
