#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改 argon 为默认主题,不再集成luci-theme-bootstrap主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 添加网口
sed -i '$i uci set network.lan.ifname="eth0 eth2 eth3"' package/default-settings/files/zzz-default-settings
sed -i '$i uci set network.wan.ifname="eth1"' package/default-settings/files/zzz-default-settings
sed -i '$i uci set network.wan.proto=dhcp' package/default-settings/files/zzz-default-settings
sed -i '$i uci commit network' package/default-settings/files/zzz-default-settings
