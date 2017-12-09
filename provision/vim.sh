#!/bin/sh

#########################################################################################
#                                                                                       #
# vim.sh                                                                                #
#                                                                                       #
# A script that installs vim.                                                           #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which vim > /dev/null 2>&1; then
  echo  "${GREEN}Installing Vim${NC}"
  
  apt-get install -y vim > /dev/null 2>&1
else
  
  echo  "${BLUE}Vim has been installed, already${NC}"
fi
