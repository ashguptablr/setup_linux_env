passwd 
ifconfig 
cat /etc/network/interfaces
exit
lsb_release -a
apt-get update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install -y docker-ce python iputils-ping bridge-utils vim dosfstools
which vim
which iptable
which iptables
which tcpdump
shutdown -h now
sudo apt update
sudo apt-get udpate
su -
df .
cd src/
df .
du -hs 
exit
fdisk -l
mount 
mkdir src
sudo mount /dev/sdb  src
fdisk -l
fdisk /dev/sdb
fdisk -l
mke2fs -j /dev/sdb1
mkdir src
sudo mount /dev/sdb  src
sudo mount /dev/sdb1  src
cd src
df .
history
git clone git://git.buildroot.net/buildroot.git
git clone https://github.com/buildroot/buildroot.git
cd buildroot/
make menuconfig
sudo apt install git
sudo apt install build-essential kernel-package fakeroot libncurses5-dev libssl-dev ccache flex bison libelf-dev
make menuconfig
make -j8
ls r-lt 
ls -rlt 
ls /root/src/buildroot/output/images/rootfs.ext4
du -hs /root/src/buildroot/output/images/rootfs.ext4
find . -name rootfs.ext4
ls r-lt ./output/images/rootfs.ext4
ls -lrt ./output/images/rootfs.ext4
du -hs ./output/images/rootfs.ext4
du -hs ./output/images/rootfs.ext2
cd linux-next/
apt-get install -y cscope
cscope -R
sudo apt install qemu qemu-system
sudo apt install gdb
cd linux-next/
gdb ./vmlinux 
git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git
cd linux-next/
git checkout master
git fetch origin
git reset --hard remotes/origin/master
make ARCH=x86_64 x86_64_defconfig 
make ARCH=x86_64 menuconfig
make ARCH=x86_64 x86_64_defconfig 
rm .config 
make ARCH=x86_64 x86_64_defconfig 
make ARCH=x86_64 menuconfig
vim .config
make -j8
sudo apt install gdb
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr" \
ls ../src/buildroot/output/images/rootfs.ext4
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=179:7 pstore_blk.kmsg_size=64" -serial stdio -display none
ps aux |grep qemu
qemu-img create -f qcow2 disk1.img 1G
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=179:7 pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=64" -serial stdio -display none
ls -rlt /sys/fs/pstore/
echo 1 > /sys/kernel/debug/pstore/record_ftrace
vim .config
make -j8
make ARCH=x86_64 menuconfig
vim fs/pstore/blk.c 
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=64" -serial stdio -display none
make ARCH=x86_64 menuconfig
make -j8
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=64" -serial stdio -display none
cd lix
cd linux-next/
cscope -qd
grep -ri "must be supplied" drivers/fsi/
grep -ri "must be supplied" drivers/
cscope -qd
cd linux-next/
cscope -qd
cd lix
cd linux-next/
vim .config
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=64" -serial stdio -display none
cscope -qd
make -j8
git status
vim .config
make ARCH=x86_64 menuconfig
vim .config
cscope -qd
cd linux-next/
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb pstore_blk.kmsg_size=64" -serial stdio -display none
cd linux
cd linux-next/
cscope -qd
grep -ri "eraseblock size of MTD partition" drivers/
fg
make ARCH=x86_64 menuconfig
vim .config
make -j8
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=64" -serial stdio -display none
ps aux |grep qemu
cscope -qd
make -j8
vim .config
make -j8
fg
grep -ri "too small" drivers/mtd/
fg
make -j8
fg
cd linux-next/
gdb ./vmlinux 
cd linux-next/
ls
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=64" -serial stdio -display none
cscope -qd
ifconfig 
cscope -qd
make ARCH=x86_64 menuconfig
vim .config
make ARCH=x86_64 menuconfig
vim .config
make ARCH=x86_64 menuconfig
vim .config
make -j8
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb" -serial stdio -display none
ps aux |grep qemu
kill -9 11948
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb" -serial stdio -display none
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb" -serial stdio -display none
vi /var/log/me
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb" -serial stdio -display none
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb pstore_blk.blkdev=/dev/mtd0 pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb pstore_blk.blkdev=/dev/mtd0 pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb pstore_blk.blkdev="block2mtd: /dev/sdb" pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb pstore_blk.blkdev=block2mtd: /dev/sdb pstore_blk.kmsg_size=64" -serial stdio -display none
git status
git diff 
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb pstore_blk.blkdev=/dev/mtd0 pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb pstore_blk.blkdev=block2mtd: /dev/sdb pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sda,,Config pstore_blk.blkdev=block2mtd: /dev/sdb pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=block2mtd: /dev/sdb pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=block2mtd: /dev/sdb pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=Config pstore_blk.kmsg_size=64" -serial stdio -display none
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=Config pstore_blk.kmsg_size=4" -serial stdio -display none
ps aux |grep qemu
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=Config pstore_blk.kmsg_size=4" -serial stdio -display none
ifocnfig 
ifocnfig
ifconfig
exit
cd linux-next/
ls
grep -ri "panic write failure a" drivers/mtd/
vim drivers/mtd/mtdpstore.c 
cd linux-next/
gdb ./vmlinux 
cd linux-next/
cscope -qd
vim ~/.bashrc
echo $PATH
export PATH=~/bin/:$PATH
echo $PATH
which lid
export PATH=~/:$PATH
which lid
fg
cscope -qd
cd linux-next/
ifocnfig
ifconfig
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=Config pstore_blk.kmsg_size=4" -serial stdio -display none
make -j8
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=Config pstore_blk.kmsg_size=4" -serial stdio -display none
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr block2mtd.block2mtd=/dev/sdb,,Config pstore_blk.blkdev=Config pstore_blk.kmsg_size=4" -serial stdio -display none
ps aux 
docker ps 
ls
exit
ls -rlt 
exit
ls -rlt 
exit
cd linux-next/
ls
cscope-qd
cscope -qd
grep -ri "register_pstore_blk" fs/pstore/
fg
cscope  -qd
cd linux-next/
gdb ./vmlinux 
cd linux-next/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=4" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.kmsg_size=4" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=true pstore_blk.kmsg_size=4" -serial stdio -display none
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=true pstore_blk.kmsg_size=4" -serial stdio -display none
ls -rlt /sys/fs/pstore/
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=true pstore_blk.kmsg_size=4" -serial stdio -display none
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=true pstore_blk.kmsg_size=4" -serial stdio -display none/
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=true pstore_blk.kmsg_size=4" -serial stdio -display none/
qemu-system-x86_64 -s -S -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=true pstore_blk.kmsg_size=4" -serial stdio -display none/
cd linux-next/
ls
ifocnfig
ifconfig
ls -rlt 
ls -rlt tags ID
du -hs 
df .
cd ~/src/
df .
cd 
df .
cd -
df .
cd linux-next/
ls -rlt 
df .
ls -rlt 
make -j8
find . -name *.o
find . -name *.O
find . -name proc.o
find . -name "*.o"
find . -name "*.o" | rm -rf 
find . -name "*.o"
find . -name "*.o" | xargs rm -rf 
find . -name "*.o"
make -j8
make -DDEBUG -j8
make  -j8 -DDEBUG
vim .config
make  -j8 
cd linux-next/
ls
cscope -qd
apt-get install mkid
apt-get update
apt-get install id-utils 
apt-get install exuberant-ctags
cscope -qd
grep -ri buildtool ~/.*
which lib
which lid
vim /root/./.vimrc /root/./lid 
fg
~/cs.local.linux 
vim /root/cs.local.linux
which ctags
fg
~/cs.local.linux 
cd ..
mv ~/linux-next ~/src/
cd ~/src/linux-next/
~/cs.local.linux 
ls r-lt 
ls -rlt 
rm -rf cscope.*
rm -rf cs.files 
rm -rf tags 
rm -rf ID 
~/cs.local.linux 
cscope -qs
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../src/buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 pstore_blk.kmsg_size=4" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 pstore_blk.kmsg_size=4" -serial stdio -display none/
ps aux |grep qemu
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 pstore_blk.kmsg_size=4" -serial stdio -display none/
ls -rlt 
ls -rlt /sys/fs/pstore/
ls -lrt ./output/images/rootfs.ext4
ls -rlt /sys/fs/pstore/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 pstore_blk.kmsg_size=4" -serial stdio -display none/
vi /sys/fs/pstore/console-pstore_blk-0
ls -rlt /sys/fs/pstore/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 pstore_blk.kmsg_size=4" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 " -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 " -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg="file fs/pstore/zone.c +p"" -serial stdio -display none/
ps aux |grep qemu
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg="file fs/pstore/zone.c +p" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg='file fs/pstore/zone.c +p'" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg='file fs/pstore/* +p'" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1" dyndbg="file fs/pstore/* +p" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg=file fs/pstore/* +p" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg=fs/pstore/* +p" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg="file drivers/usb/core/hub.c +p" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg="file drivers/usb/core/hub.c +p"" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg=file drivers/usb/core/hub.c +p" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1  dyndbg=file drivers/usb/core/hub.c +p" -serial stdio -display none/
qemu-system-x86_64  -kernel arch/x86/boot/bzImage -boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 -drive format=qcow2,file=disk1.img -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr pstore_blk.blkdev=/dev/sdb1 pstore_blk.best_effort=1 dynamic_debug.verbose=1 dyndbg='file drivers/usb/core/hub.c +p'" -serial stdio -display none/
cd ku
cd linux-next/
cd ~/src/linux-next/
df .
cscope -qd
ls -rlt 
vim cs.files 
df .
cscope -qd
cd src/linux-next/
make -j8
cd src/linux-next/
ls
history | grep "apt"
cd li
ls
cd src
cd linux-next/
ls
cscope --qd
cscope -qd
fg
cd src/linux-next/
ls
cscope -qd
fg
grep -ri "erase" fs/pstore/
fg
cd src/linux-next/
cscope -qd
ssh root2ALIGN_DOWN
ssh root@ALIGN_DOWN
cd src/linux-next/
cscope -qd
cd src/linux-next/
ls
cscope -qd
cd src/linux-next/
cscope -qd
cd src/linux-next/
ls
history 
vim ~/.bash_history 
exit
cd src/buildroot/
ls -rlt 
exit
