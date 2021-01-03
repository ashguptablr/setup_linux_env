#!/bin/bash

clear

apt-get update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install -y docker-ce python iputils-ping bridge-utils vim dosfstools
sudo apt install -y build-essential kernel-package fakeroot libncurses5-dev libssl-dev ccache flex bison libelf-dev
sudo apt install -y qemu qemu-system
sudo apt install -y gdb
sudo apt install -y cscope
sudo apt install -y id-utils
sudo apt install -y curl
sudo apt install -y git
curl -sO https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py
pip install virtualenv
pip install virtualenvwrapper
mkdir -p ~/.venvs && chown $(logname) ~/.venvs
sudo apt install -y vim
sudo apt install -y tmux
apt-get update
sudo apt install -y python-software-properties software-properties-common
add-apt-repository -y ppa:pi-rho/dev
apt-get update
sudo apt install -y tmux=1.9a-1~ppa1~t
sudo apt install -y rlwrap
sudo apt install -y ack-grep
sudo apt install -y exuberant-ctags
sudo apt install -y python-dev
sudo apt install -y ipython
mkdir -p ~/src
  
rm -rf ~/.tmux ~/.tmux.conf
ln -s ~/setup_linux_env/.tmux ~/.tmux
ln -s ~/setup_linux_env/.tmux.conf ~/.tmux.conf
tmux new-session -d

rm -rf ~/.vim ~/.vimrc
ln -s ~/setup_linux_env/.vim ~/.vim
ln -s ~/setup_linux_env/.vimrc ~/.vimrc
  
rm -rf ~/.bash_history
cp ~/setup_linux_env/.bash_history ~/
