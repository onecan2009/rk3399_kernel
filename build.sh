#!/bin/bash

if [ -f ./.config ];then
	echo "config file is already exist"
else
	 make ARCH=arm64 firefly_linux_defconfig
fi

make rk3399-firefly-aio-linux.img


#copy to share dir 

cp *.img /mnt/hgfs/share_dir/rk3399_AIO/
