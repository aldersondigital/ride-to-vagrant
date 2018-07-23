#!/bin/sh

#########################################################################################
#                                                                                       #
# postgres.sh                                                                           #
#                                                                                       #
# A script that installs postgres.                                                      #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which psql > /dev/null 2>&1; then
  echo  "${GREEN}Installing Postgres${NC}"
  wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
  sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
  sudo apt-get update
  sudo apt-get install -y postgresql postgresql-contrib
else
  echo  "${BLUE}Postgres has been installed, already${NC}"
fi
