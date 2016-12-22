#!/bin/sh 

# update and upgrade
sudo apt-get update && sudo apt-get upgrade -y
# install necessary packages
sudo apt-get install clang gcc git python ruby zsh tree cowsay htop valgrind -y
# change shell to zsh
sudo ex /etc/passwd <<EOEX
  :%s/bash/zsh/g
  :wq!
EOEX
# retrieve my .zshrc file and .gitconfig files
wget https://raw.githubusercontent.com/jonrellsworth/ubuntu-config/master/.gitconfig
wget https://raw.githubusercontent.com/jonrellsworth/ubuntu-config/master/.zshrc
# vim with lua
# https://gist.githubusercontent.com/hillwah/68f0f0a7c6b73f61bb4884673a70b9a7/raw/872ca6ce0e0d3097a0f27932aaaf97eb7530ee91/vim74_lua
sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-common vim-gui-common -y

sudo apt-get build-dep vim-gnome -y
 
sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev -y

sudo rm -rf /usr/local/share/vim

sudo rm /usr/bin/vim
 
sudo mkdir /usr/include/lua5.1/include
sudo mv /usr/include/lua5.1/*.h /usr/include/lua5.1/include/
 
sudo ln -s /usr/bin/luajit-2.0.4 /usr/bin/luajit
 
cd ~
git clone https://github.com/vim/vim
cd vim/src
make distclean
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
	        --enable-gui=auto \
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-cscope 
make 
sudo make install

# http://vim.spf13.com/#vimrc
curl http://j.mp/spf13-vim3 -L -o - | sh

# exit then re-enter and run zpreztoInstall.sh
exit

