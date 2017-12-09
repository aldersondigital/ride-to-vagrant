#!/bin/sh

#########################################################################################
#                                                                                       #
# git.sh                                                                                #
#                                                                                       #
# A script that installs git.                                                           #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which git > /dev/null 2>&1; then
  echo  "${GREEN}Installing Git${NC}"
  apt-get install -y git > /dev/null 2>&1
else
  echo  "${BLUE}Git has been installed, already${NC}"
fi
