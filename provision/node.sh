#!/bin/sh

#########################################################################################
#                                                                                       #
# node.sh                                                                               #
#                                                                                       #
# A script that installs node and npm.                                                  #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which node > /dev/null 2>&1; then
  echo  "${GREEN}Installing Node and NPM${NC}"
  
  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - > /dev/null 2>&1
  apt-get -y update > /dev/null 2>&1
  apt-get install -y nodejs > /dev/null 2>&1
  apt-get install -y nodejs-legacy > /dev/null 2>&1

  npm install npm --global > /dev/null 2>&1
  npm cache clean -f > /dev/null 2>&1
  npm install -g n > /dev/null 2>&1
  n stable > /dev/null 2>&1
else
  
  echo  "${BLUE}Node and NPM have been installed, already${NC}"
fi
