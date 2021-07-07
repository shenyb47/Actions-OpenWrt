#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

sed -i 's#$(Device/tplink-4mlzma)#$(Device/tplink-16mlzma)#g' target/linux/ar71xx/image/tiny-tp-link.mk
sed -i 's#$(Device/tplink-8mlzma)#$(Device/tplink-16mlzma)#g' target/linux/ar71xx/image/tiny-tp-link.mk
sudo sed -i 's/# CONFIG_ATH79_MACH_TL_WR841N_V8 is not set/CONFIG_ATH79_MACH_TL_WR841N_V8=y/g' target/linux/ar71xx/config-4.14
sudo sed -i '588a \ \ DEVICE_PACKAGES := kmod-usb-core kmod-usb2' target/linux/ar71xx/image/tiny-tp-link.mk
sudo sed -i '222a \ \t ath79_register_usb();' target/linux/ar71xx/files/arch/mips/ath79/mach-tl-wr841n-v8.c
sudo sed -i 's#AR934X_ETH_CFG_SW_PHY_SWAP#AR934X_ETH_CFG_SW_ONLY_MODE#g' target/linux/ar71xx/files/arch/mips/ath79/mach-tl-wr841n-v8.c
