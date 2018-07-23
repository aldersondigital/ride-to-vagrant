#!/bin/sh

#########################################################################################
#                                                                                       #
# pm2_user.sh                                                                           #
#                                                                                       #
# A script that creates a pm2 user.                                                     #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

PM2_PASSWORD="pm2"
PM2_USERNAME="pm2"

if id -u "$PM2_USERNAME" >/dev/null 2>&1; then
  echo  "${BLUE}User $PM2_USERNAME created, already${NC}"

else  
  echo  "${GREEN}Creating $PM2_USERNAME user${NC}"
  
  useradd -m "$PM2_USERNAME" > /dev/null 2>&1
  echo "$PM2_USERNAME:$PM2_PASSWORD"|chpasswd
fi
