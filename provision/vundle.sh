#!/bin/sh

#########################################################################################
#                                                                                       #
# vundle.sh                                                                             #
#                                                                                       #
# A script that installs vundle.                                                        #
#                                                                                       #
# Called from Vagrantfile.                                                              #
#                                                                                       #
#########################################################################################


BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

HOME="/home/vagrant"
VUNDLE_LOCAL="$HOME/.vim/bundle/Vundle.vim"
VUNDLE_REPO="https://github.com/VundleVim/Vundle.vim.git"

if [ ! -d "$VUNDLE_LOCAL" ]; then
  echo  "${GREEN}Installing Vundle${NC}"
  
  git clone "$VUNDLE_REPO" "$VUNDLE_LOCAL" > /dev/null 2>&1
  vim +PluginInstall +qall
else
  echo  "${BLUE}$VUNDLE_LOCAL has been installed, already${NC}"
  vim +PluginInstall +qall
fi
