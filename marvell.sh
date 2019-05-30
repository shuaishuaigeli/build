#!/bin/sh


git clone https://github.com/opensag/marvell-openwrt.git
git clone https://github.com/opensag/marvell-kernel.git

cd marvell-openwrt
./scripts/feeds update -a
./scripts/feeds install -a

cp -a config-marvell.config .config
make -j$(($(nproc)+1)) V=99 FORCE_UNSAFE_CONFIGURE=1

