#!/bin/bash
set -euo pipefail
# 仅添加你需要的Mihomo(Nikki)官方源，无冗余
echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' >> feeds.conf.default
