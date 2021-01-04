#!/bin/bash

echo "Checkout buildroot and build it"
cp cs.local.linux ~/src
cd ~/src
git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git
cd linux-next/
cp ~/src/cs.local.linux .
git checkout master
git fetch origin
git reset --hard remotes/origin/master
cp ~/setup_linux_env/.config.linux .config
./cs.local.linux
make -j8

echo "Checkout buildroot and build it"
cd ~/src
cp ~/src/cs.local.linux .
git clone https://github.com/buildroot/buildroot.git
cd buildroot/
./cs.local.linux
make defconfig
make -j8
