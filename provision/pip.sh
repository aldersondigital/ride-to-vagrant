#!/bin/sh

#########################################################################################
#                                                                                       #
# pip.sh                                                                                #
#                                                                                       #
# A script that installs python pip.                                                    #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

if ! which pip > /dev/null 2>&1; then
  echo  "${GREEN}Installing Pip${NC}"
 
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python3 get-pip.py
  pip install -U pip
  pip install pipenv
else
  echo  "${BLUE}Pip has been installed, already${NC}"
fi
