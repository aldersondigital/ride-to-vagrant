#!/bin/sh

#########################################################################################
#                                                                                       #
# python.sh                                                                             #
#                                                                                       #
# A script that installs python 3.                                                      #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which python3 > /dev/null 2>&1; then
  echo  "${GREEN}Installing Python3${NC}"
 
  apt-get install -y software-properties-common > /dev/null 2>&1
  add-apt-repository ppa:deadsnakes/ppa > /dev/null 2>&1
  apt-get update > /dev/null 2>&1
  apt-get install python3.6 > /dev/null 2>&1
else
  
  echo  "${BLUE}Python3 has been installed, already${NC}"
fi
