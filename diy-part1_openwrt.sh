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

# Add a feed source
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git openclash https://github.com/vernesong/OpenClash' feeds.conf.default
# sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' feeds.conf.default
# sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' feeds.conf.default

# Add luci-theme-argon
# rm -rf lede/package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-theme-argon.git
rm -rf package/lean/luci-theme-argon/
git clone --depth 1 -b master https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth 1 -b master https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

# 添加额外软件包
# git clone --depth 1 -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone --depth 1 -b main https://github.com/morytyann/OpenWrt-mihomo.git package/OpenWrt-mihomo
# git clone --depth 1 https://github.com/randyho/luci-app-clash-lite.git package/luci-app-clash-lite
# git clone --depth 1 https://github.com/randyho/luci-app-openclash.git package/luci-app-openclash
# git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome

rm -rf package/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x package/lang/golang

# remove v2ray-geodata package from feeds (openwrt-22.03 & master)
rm -rf feeds/packages/net/v2ray-geodata
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
