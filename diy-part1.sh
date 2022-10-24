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
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# echo >> feeds.conf.default echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
# echo "src-git smartdnsed -i "/helloworld/d" "feeds.conf.default"
# echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git" >> feeds.conf.default
# echo "src-git lienol https://github.com/yishan2019/openwrt-package" >> feeds.conf.default
# echo "src-git clone https://github.com/tuanqing/install-program package/install-program" >> feeds.conf.default
# echo "src-git AdGuardHome https://github.com/AdguardTeam/AdGuardHome" >> feeds.conf.default
echo "src-git OpenClash https://github.com/vernesong/OpenClash" >> "feeds.conf.default"
# Add a feed source  
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
# sed -i 's#$(Device/tplink-4mlzma)#$(Device/tplink-16mlzma)#g' target/linux/ath79/image/tiny-tp-link.mk
# sed -i 's#$(Device/tplink-8mlzma)#$(Device/tplink-16mlzma)#g' target/linux/ath79/image/tiny-tp-link.mk
# sed -i '6a \ \ath79_setup_ar934x_eth_cfg(AR934X_ETH_CFG_SW_ONLY_MODE);' target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts （语法错）

