#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 保留QModem源
echo 'src-git qmodem https://github.com/FUjr/QModem.git;main' >> feeds.conf.default

# 添加Mihomo(Nikki)官方源
echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' >> feeds.conf.default
