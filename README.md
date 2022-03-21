# KernelHacking
Repo for Linux kernel hacking on Beaglebone Black...

#### 1. Get cross compiler (I use gcc with support for hard floating points from Linaro, works on Centos 8 & Fedora 40.7)
$ wget https://releases.linaro.org/components/toolchain/binaries/7.5-2019.12/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz

#### 2. Clone Beagleboard kernel
$ git clone https://github.com/beagleboard/linux.git

#### 3. Checkout kernel version on your Beagle e.g. 4.19
$ git checkout 4.19

#### 4. Get defconfig file from linux-headers and copy into .config in Beagleboard kernel
$ cp beagle_config .config

#### 5. Build kernel image

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LOADADDR=0x80008000 uImage j<2xcores>

#### 6. Build device tree

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- uImage dtb.am335x-boneblack j<2xcores>

#### 7. Build kernel modules

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=<desired-path-to-kernel-modules> modules_install -j<2xcores>


#### 8. Root file system
Download already built RFS here: https://www.dropbox.com/s/k93doprl261hwn2/rootfs.tar.xz?dl=0

$ tar -xf rootfs.tar.xz

$ sudo cp -r rootfs <path-to-sd_card>

$ cd <path-to-sd_card>/rootfs

$ sudo mv ./* ../

$ cd ..
  
$ sudo rmdir rootfs
