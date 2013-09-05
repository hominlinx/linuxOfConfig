#!/bin/bash
cd .

CF_DIR=`pwd`
#for tmux
ln -s $CF_DIR/config/tmux.conf ~/.tmux.conf
echo "alias tmux='tmux -2'" >> ~/.bashrc
source .bash_profile
