# KernelHacking
Repo for Linux kernel hacking on Beaglebone Black...

## Get cross compiler (I use gcc from Linaro, works on Centos 8)
$ wget https://releases.linaro.org/components/toolchain/binaries/7.5-2019.12/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz

## Clone Beagleboard kernel
$ git clone https://github.com/beagleboard/linux.git

## Checkout kernel version on your Beagle e.g. 4.19
$ git checkout 4.19

## Get defconfig file from linux-headers and copy into .config in Beagleboard kernel
$ cp beagle_config .config

### Build kernel image

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LOADADDR=0x80008000 uImage

### Build device tree

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage-dtb.am335x-boneblack

### Build kernel modules

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- modules


## TODO
1. Add defconfig file
