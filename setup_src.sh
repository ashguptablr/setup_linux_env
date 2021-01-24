#!/bin/bash

if [ "$1x" == "linuxx" ]; then
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
elif [ "$1x" == "gox" ]; then
	# delete old version.
	/usr/local/go
	wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz
	tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz
        echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
	source ~/.profile
	go version
elif [ "$1x" == "vppx" ]; then
        #check out vpp src
        git clone https://gerrit.fd.io/r/vpp
fi

if [ "$1x" == "linuxx" ]; then
	echo "Checkout buildroot and build it"
	cd ~/src
	cp ~/src/cs.local.linux .
	git clone https://github.com/buildroot/buildroot.git
	cd buildroot/
	./cs.local.linux
	make defconfig
	make -j8
fi
