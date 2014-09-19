#!/bin/bash
cd .

#更新子模块到最新版本
git submodule init
git submodule update
git submodule -q foreach git pull -q origin master

#安装各种工具

#-----------------
#---编程类软件
#-----------------

#-----------------
#---顺手工具
#-----------------
sudo apt-get install tmux


#-----------------
#---配置
#-----------------

BIN=$HOME/bin
CF_DIR=`pwd`

if [ ! -d $BIN ]; then
    mkdir $BIN
fi

#for vim 自动配置
sh -x $CF_DIR/vim/install.sh

#for tmux
echo "Installing tmux  colors to $BIN"
ln -s $CF_DIR/tmux/.tmuxcolors.conf ~/.tmuxcolors.conf

echo "Symlinking .tmux.conf to $HOME/.tmux.conf"
ln -s $CF_DIR/tmux/tmux.conf ~/.tmux.conf
echo "alias tmux='tmux -2'" >> ~/.bashrc
#source .bash_profile

#for vimperator
echo "Symlinking vimperator to $HOME/.vimperatorrc"
ln -s $CF_DIR/vimperatorrc ~/.vimperatorrc

#for i3-wm
echo "Symlinking i3/config to $HOME/.i3/config"
ln -s $CF_DIR/i3wm/i3wm-config ~/.i3/config

