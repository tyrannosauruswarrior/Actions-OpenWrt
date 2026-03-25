#!/bin/bash
# ======================== FanchmWrt 固件自定义配置 ========================
# 1. 修改默认 LAN IP 为 192.168.188.1（如需改回192.168.1.1，把188改成1即可）
sed -i 's/192.168.1.1/192.168.188.1/g' package/base-files/files/bin/config_generate

# 2. 设置默认主机名为 FanchmWrt-JDCloud
sed -i 's/OpenWrt/FanchmWrt-JDCloud/g' package/base-files/files/bin/config_generate

# 3. 开机默认启用WiFi（避免刷入后无线默认关闭）
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 4. 可选：设置root默认密码为 password（如需启用，取消下面两行注释即可）
# ROOT_HASH='$1$wEeHTjMS$cQz4Z5jG3L2kM8pR9vN6u/'
# sed -i "s|^root:[^:]*:|root:${ROOT_HASH}:|" package/base-files/files/etc/shadow
