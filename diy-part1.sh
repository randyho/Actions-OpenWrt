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

# Add luci-theme-argon
# rm -rf lede/package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-theme-argon.git
rm -rf package/lean/luci-theme-argon/
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

# 添加额外软件包
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash

# ssr plus
# svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/lean/luci-app-ssr-plus
# SSRP依赖
# rm -rf ./feeds/packages/net/kcptun
# rm -rf ./feeds/packages/net/shadowsocks-libev
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/shadowsocksr-libev package/lean/shadowsocksr-libev
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt package/lean/pdnsd
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/kcptun package/lean/kcptun
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/srelay package/lean/srelay
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package/lean/microsocks
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/dns2socks package/lean/dns2socks
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package/lean/redsocks2
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/proxychains-ng package/lean/proxychains-ng
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ipt2socks package/lean/ipt2socks
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/simple-obfs package/lean/simple-obfs
# svn co https://github.com/coolsnowwolf/packages/trunk/net/shadowsocks-libev package/lean/shadowsocks-libev
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/trojan package/lean/trojan
# svn co https://github.com/project-openwrt/openwrt/trunk/package/lean/tcpping package/lean/tcpping
# svn co https://github.com/fw876/helloworld/trunk/naiveproxy package/lean/naiveproxy

# PASSWALL
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall package/new/luci-app-passwall
# sed -i 's,default n,default y,g' package/new/luci-app-passwall/Makefile
# sed -i '/V2ray:v2ray/d' package/new/luci-app-passwall/Makefile
# sed -i '/https_dns_proxy:https-dns-proxy/d' package/new/luci-app-passwall/Makefile
# cp -f ../PATCH/new/script/move_2_services.sh ./package/new/luci-app-passwall/move_2_services.sh
# pushd package/new/luci-app-passwall
# bash move_2_services.sh
# popd
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/new/tcping
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/new/trojan-go
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/new/brook
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/new/trojan-plus
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/new/ssocks
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/xray package/new/xray
# sed -i 's,default n,default y,g' package/new/xray/Makefile
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/v2ray package/new/v2ray
# svn co https://github.com/xiaorouji/openwrt-passwall/trunk/v2ray-plugin package/new/v2ray-plugi

# AutoCore
# svn co https://github.com/project-openwrt/openwrt/branches/master/package/lean/autocore package/lean/autocore
# svn co https://github.com/project-openwrt/packages/trunk/utils/coremark feeds/packages/utils/coremark
# ln -sf ../../../feeds/packages/utils/coremark ./package/feeds/packages/coremark
# sed -i 's,default n,default y,g' feeds/packages/utils/coremark/Makefile
