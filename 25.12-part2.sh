#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 默认开启wifi
#sed -i 's/wireless.radio${devidx}.disabled=1/wireless.radio${devidx}.disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# sed -i 's/wireless.${name}.disabled=1/wireless.${name}.disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# sed -i 's/defaults ? 0 : 1/0/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
sed -i 's/src-git packages/#src-git packages/g' feeds.conf.default
sed -i 's/src-git luci/#src-git luci/g' feeds.conf.default



echo 'src-git packages https://github.com/jdjh520/packages-immortalwrt.git;openwrt-25.12' >>feeds.conf.default
echo 'src-git luci https://github.com/jdjh520/luci-immortalwrt.git;openwrt-25.12' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
