#!/bin/sh

#########################################################################################
#                                                                                       #
# nginx.sh                                                                              #
#                                                                                       #
# A script that installs nginx.                                                         #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which nginx > /dev/null 2>&1; then
  echo  "${GREEN}Install Nginx${NC}"
  
  apt-get -y update > /dev/null 2>&1
  apt-get install -y nginx > /dev/null 2>&1
else
  
  echo  "${BLUE}Nginx has been installed, already${NC}"
fi
