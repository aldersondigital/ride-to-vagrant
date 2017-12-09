#!/bin/bash

#########################################################################################
#                                                                                       #
# start_nginx.sh                                                                        #
#                                                                                       #
# A simple script that starts nginxs.                                                   #
#                                                                                       #
#########################################################################################

# Common paths
HOME="/home/vagrant"

# Restart Nginx
echo "Restart Nginx."
cd "$HOME"
sudo /etc/init.d/nginx restart > /dev/null 2>&1
