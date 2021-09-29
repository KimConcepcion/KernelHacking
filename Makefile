obj-m += hello.o

ARCH          := arm
CROSS_COMPILE := arm-linux-gnueabihf-
KERNEL_DIR    := /home/kim/Work/kbuild/beaglebone/linux

all:
        make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(shell pwd) -C $(KERNEL_DIR) modules

clean:
        make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(shell pwd) -C $(KERNEL_DIR) clean
