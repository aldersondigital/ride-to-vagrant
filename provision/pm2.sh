#!/bin/sh

#########################################################################################
#                                                                                       #
# pm2.sh                                                                                #
#                                                                                       #
# A script that installs pm2.                                                           #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which pm2 > /dev/null 2>&1; then
  echo  "${GREEN}Installing PM2${NC}"
  
  npm install -g --silent pm2 > /dev/null 2>&1
else

  echo  "${BLUE}PM2 has been installed, already${NC}"
fi
