#!/bin/bash
set -euo pipefail
# ======================== 带校验的固件自定义配置 ========================
# 1. 修改默认管理IP（带文件存在校验，避免报错）
CONFIG_FILE="package/base-files/files/bin/config_generate"
if [ -f "$CONFIG_FILE" ]; then
  sed -i 's/192.168.1.1/192.168.188.1/g' "$CONFIG_FILE"
  echo "✅ 管理IP修改完成"
else
  echo "⚠️  警告：配置文件不存在，跳过IP修改"
fi

# 2. 开机默认启用WiFi（带文件存在校验）
WIFI_FILE="package/kernel/mac80211/files/lib/wifi/mac80211.sh"
if [ -f "$WIFI_FILE" ]; then
  sed -i 's/disabled=1/disabled=0/g' "$WIFI_FILE"
  echo "✅ WiFi默认启用设置完成"
else
  echo "⚠️  警告：WiFi配置文件不存在，跳过设置"
fi

# 3. 设置默认主机名
HOST_FILE="package/base-files/files/bin/config_generate"
if [ -f "$HOST_FILE" ]; then
  sed -i 's/OpenWrt/FanchmWrt-JDCloud/g' "$HOST_FILE"
  echo "✅ 主机名修改完成"
fi
