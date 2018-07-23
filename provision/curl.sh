#!/bin/sh

#########################################################################################
#                                                                                       #
# curl.sh                                                                               #
#                                                                                       #
# A script that installs curl.                                                          #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which curl > /dev/null 2>&1; then
  echo "${GREEN}Installing Curl${NC}"
  apt-get install -y curl > /dev/null 2>&1
else
  echo "${BLUE}Curl has been installed, already${NC}"
fi
