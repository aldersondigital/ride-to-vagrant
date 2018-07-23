#!/bin/sh

#########################################################################################
#                                                                                       #
# mongo.sh                                                                              #
#                                                                                       #
# A script that installs mongo.                                                         #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

MONGO_REPO="http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse"

if ! which mongod > /dev/null 2>&1; then
  echo  "${GREEN}Installing Mongo${NC}"
  
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 > /dev/null 2>&1
  echo "deb $MONGO_REPO" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list > /dev/null 2>&1
  apt-get -y update > /dev/null 2>&1
  apt-get -y install mongodb mongodb-clients mongodb-dev mongodb-server > /dev/null 2>&1
else
  
  echo  "${BLUE}Mongo has been installed, already${NC}"
fi
