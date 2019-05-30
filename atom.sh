#!/bin/sh


git clone https://github.com/opensag/atom-openwrt.git

cd atom-openwrt
./scripts/feeds update -a
./scripts/feeds install -a

cp -a config-atom.config .config
make -j$(($(nproc)+1)) V=99 FORCE_UNSAFE_CONFIGURE=1

