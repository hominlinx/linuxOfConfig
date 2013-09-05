#!/bin/bash
cd .

BIN=$HOME/bin
CF_DIR=`pwd`

if [ ! -d $BIN ]; then
    mkdir $BIN
fi

#for tmux
echo "Installing tmuxen to $bin"
ln -sf $CF_DIR/config/tmuxen $BIN/tmuxen

echo "Symlinking .tmux.conf to $HOME/.tmux.conf"
ln -s $CF_DIR/config/tmux.conf ~/.tmux.conf
echo "alias tmux='tmux -2'" >> ~/.bashrc
source .bash_profile
