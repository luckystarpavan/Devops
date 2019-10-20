#!/bin/bash


# it will ask key now
gpg --recv-keys 79BE3E4300411886
gpg --verify linux-5.3.7.tar.sign
tar xvf linux-5.3.7.tar
cd linux-5.2.19
cp -v /boot/config-$(uname -r) .config
###'/boot/config-4.15.0-30-generic' -> '.config'
sudo apt-get install build-essential libncurses-dev bison flex libssl-dev libelf-dev
make menuconfig





Make

####use 4 core/thread ##
make -j 4
## get thread or cpu core count using nproc command ##
make -j $(nproc)

udo make modules_install  -y –m
sudo make install
sudo update-initramfs -c -k 5.3.7
sudo update-grub

reboot
uname -mrs

