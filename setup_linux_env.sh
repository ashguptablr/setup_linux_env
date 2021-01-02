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
  sudo apt install -y exuberant-ctags
  apt-get install -y curl
  apt-get install -y git
  curl -sO https://bootstrap.pypa.io/get-pip.py
  python get-pip.py
  rm get-pip.py
  pip install virtualenv
  pip install virtualenvwrapper
  mkdir -p ~/.venvs && chown $(logname) ~/.venvs
  apt-get install -y vim
  apt-get install -y tmux
  apt-get update
  apt-get install -y python-software-properties software-properties-common
  add-apt-repository -y ppa:pi-rho/dev
  apt-get update
  apt-get install -y tmux=1.9a-1~ppa1~t
  apt-get install -y rlwrap
  apt-get install -y ack-grep
  apt-get install -y exuberant-ctags
  apt-get install -y build-essentials
  apt-get install -y python-dev
  apt-get install -y ipython
  mkdir -p ~/.dotfiles ~/src
  
  git clone https://github.com/ewilazarus/dotfiles.git ~/.dotfiles --recursive

  ln -s ~/.dotfiles/tmux ~/.tmux
  ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
  tmux new-session -d
  bash ~/.dotfiles/tmux/plugins/tpm/scripts/install_plugins.sh
  tmux kill-server

  ln -s ~/.dotfiles/vim ~/.vim
  ln -s ~/.dotfiles/vimrc ~/.vimrc

  echo
  echo ">>> Installing 'powerline-fonts'..."
  bash ~/.dotfiles/resources/powerline-fonts/install.sh

  echo
  echo ">>> Installing 'zsh'..."
  apt-get install -y zsh
  ln -s ~/.dotfiles/zsh/oh-my-zsh/ ~/.oh-my-zsh
  ln -s ~/.dotfiles/zshrc ~/.zshrc
  chsh -s /bin/zsh $(logname)

  echo
  echo ">>> Changing default terminal style..."
  rm ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml
  ln -s ~/.dotfiles/gconf/terminal/gconf.xml ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml
  chown $(logname) ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml

  chown -R $(logname) ~/.dotfiles
