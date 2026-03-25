#!/bin/bash
# 修改默认管理IP为192.168.188.1（如需改回192.168.1.1，把188改成1即可）
sed -i 's/192.168.1.1/192.168.188.1/g' package/base-files/files/bin/config_generate
# 开机默认启用WiFi
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
