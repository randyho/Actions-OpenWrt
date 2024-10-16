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

# Add luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-argon
git clone --depth 1 -b master https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth 1 -b master https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

# 添加额外软件包
git clone --depth 1 -b main https://github.com/morytyann/OpenWrt-mihomo.git package/OpenWrt-mihomo
# git clone --depth 1 -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# git clone --depth 1 https://github.com/randyho/luci-app-clash-lite.git package/luci-app-clash-lite
# git clone --depth 1 https://github.com/randyho/luci-app-openclash.git package/luci-app-openclash
# git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
