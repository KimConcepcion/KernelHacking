# KernelHacking
Repo for Linux kernel hacking on Beaglebone Black...

## Clone Beagleboard kernel
$git clone https://github.com/beagleboard/linux.git

## Checkout kernel version on your Beagle e.g. 4.19
$ git checkout 4.19

## Get defconfig file from linux-headers and copy into .config in Beagleboard kernel
$ cp beagle_config .config

## Build kernel

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage dtb

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage-dtb.am335x-boneblack

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- modules


## TODO
1. Add toolchain to repo
2. ?
