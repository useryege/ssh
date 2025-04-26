#!/bin/bash

# 安装 squid
sudo apt update && sudo apt install squid -y

# 检查配置文件是否存在
if [ ! -f ./squid.conf ]; then
    echo "未找到 squid.conf，请先上传到当前目录"
    exit 1
fi

# 复制配置文件
sudo cp ./squid.conf /etc/squid/squid.conf
echo "已复制 squid.conf 到 /etc/squid/"

# 重启 squid 服务
sudo systemctl restart squid

# 检查服务状态
sudo systemctl status squid

echo "Squid 部署完成"
