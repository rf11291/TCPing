#!/bin/bash

DOWNLOAD_URL="https://raw.githubusercontent.com/rf11291/TCPing/main/tcping"

# 下载 tcping
echo "正在下载 tcping..."
curl -o tcping $DOWNLOAD_URL

# 检查下载是否成功
if [ -f "tcping" ]; then
    echo "下载成功。正在安装..."
    # 移动到 /usr/bin/ 并赋予执行权限
    sudo mv tcping /usr/bin/tcping
    sudo chmod +x /usr/bin/tcping
    echo "tcping 已安装至 /usr/bin/tcping"
else
    echo "下载失败。"
    exit 1
fi
