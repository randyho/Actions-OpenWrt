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
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git openclash https://github.com/vernesong/OpenClash' feeds.conf.default

# Add luci-theme-argon
# rm -rf lede/package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-theme-argon.git
# git clone https://github.com/jerrykuku/luci-app-argon-config.git

#添加argon-config 使用 最新argon
rm -rf package/lean/luci-theme-argon/
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat

#添加额外软件包
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

# 拉取 OpenClash
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
# 编译 po2lmo (如果有po2lmo可跳过)
# pushd package/luci-app-openclash/tools/po2lmo
# make && sudo make install
# popd

# ssr-plus
# svn co https://github.com/fw876/helloworld/trunk/xray-core package/xray-core
# svn co https://github.com/fw876/helloworld/trunk/xray-plugin package/xray-plugin
# svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/shadowsocks-rust
# svn co https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/shadowsocksr-libev
# svn co https://github.com/fw876/helloworld/trunk/v2ray-plugin package/v2ray-plugin
# svn co https://github.com/fw876/helloworld/trunk/v2ray-core package/v2ray-core
# svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
