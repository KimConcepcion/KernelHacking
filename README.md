# KernelHacking
Repo for Linux kernel hacking on Beaglebone Black...

1. Clone Beagleboard kernel
https://github.com/beagleboard/linux.git

2. Checkout kernel version on your Beagle e.g. 4.19
$ git checkout 4.19

3. Get defconfig file from linux-headers and copy into .config in Beagleboard kernel
$ copy beagle_config .config

4. Build kernel

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage dtb

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage-dtb.am335x-boneblack

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- modules
