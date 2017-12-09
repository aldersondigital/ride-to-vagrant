#!/bin/sh

#########################################################################################
#                                                                                       #
# root_profile.sh                                                                       #
#                                                                                       #
# A script that replace 'mesg n' within the root profile.                               #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


ROOT_DIR="/root"
PROFILE=".profile"

sudo chmod -R 775 "$ROOT_DIR"
cd "$ROOT_DIR"
sed -i -- 's/mesg n/tty -s && mesg n/g' "$PROFILE"
