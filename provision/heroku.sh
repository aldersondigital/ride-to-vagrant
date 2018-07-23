#!/bin/sh

#########################################################################################
#                                                                                       #
# heroku.sh                                                                             #
#                                                                                       #
# A script that installs Heroku.                                                        #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which heroku > /dev/null 2>&1; then
  echo  "${GREEN}Installing Heroku${NC}"
  snap install heroku --classic 
else
  echo  "${BLUE}Heroku has been installed, already${NC}"
fi
