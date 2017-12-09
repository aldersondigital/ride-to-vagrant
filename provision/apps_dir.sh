#!/bin/sh

#########################################################################################
#                                                                                       #
# app_dir.sh                                                                            #
#                                                                                       #
# A script that creates /var/www/apps (when it has not been created, already).          #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################

BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

APPS_DIR="/var/www/apps" 

if [ ! -d "$APPS_DIR" ]; then
  mkdir -p "$APPS_DIR"
  chmod -R 777 "$APPS_DIR"
fi
