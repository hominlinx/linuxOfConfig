#!/bin/bash
cd .

#vim dan
#更新子模块到最新版本
#git submodule init
#git submodule update
#git submodule -q foreach git pull -q origin master

#安装各种工具

#-----------------
#---编程类软件
#-----------------

#-----------------
#---顺手工具
#-----------------
sudo apt-get install tmux
sudo apt-get install awesome-extra


#-----------------
#---配置
#-----------------

BIN=$HOME/bin
CF_DIR=`pwd`

if [ ! -d $BIN ]; then
    mkdir $BIN
fi

#for vim 自动配置
#sh -x $CF_DIR/vim/install.sh

#for tmux
TMUXCONF="$CF_DIR/tmux/tmux.conf"
if [ ! -f "$TMUXCONF" ]; then

    echo "Installing tmux  colors to $BIN"
    ln -s $CF_DIR/tmux/.tmuxcolors.conf ~/.tmuxcolors.conf

    echo "Symlinking .tmux.conf to $HOME/.tmux.conf"
    ln -s $CF_DIR/tmux/tmux.conf ~/.tmux.conf
    echo "alias tmux='tmux -2'" >> ~/.bashrc
else
    echo "tmux conf has done!!"
fi
#source .bash_profile

#for vimperator
echo "Symlinking vimperator to $HOME/.vimperatorrc"
ln -s $CF_DIR/vimperatorrc ~/.vimperatorrc

#for i3-wm
#I3WM=$HOME/.i3
#if [ ! -d  $I3WM ]; then
#    mkdir $I3WM
#fi
#echo "Symlinking i3/config to $HOME/.i3/config"
#ln -s $CF_DIR/i3wm/i3wm-config ~/.i3/config
#ln -s $CF_DIR/i3wm/i3status.conf ~/.i3status.conf

#for awesome
AWESOME=$HOME/.config/awesome
if [ ! -d $AWESOME ]; then
    mkdir $AWESOME
else
    echo "${AWESOME} has done"
fi
echo "Symlinking awesome-config to ${AWESOME}"
ln -s $CF_DIR/awesome/awesome-config/rc.lua ${AWESOME}/rc.lua
ln -s $CF_DIR/awesome/awesome-themes ${AWESOME}/

# ckermit , a com like minicom
ln -s $CF_DIR/kermrc ~/.kermrc

#for shadowsocks

#sudo add-apt-repository ppa:hzwhuang/ss-qt5
#sudo apt-get update
#sudo apt-get install shadowsocks-qt5

#for sougou-pinyin

#for firefox adobe


