#!/bin/bash
# 初始化安装oneinstack
cd /usr/local/src/
wget http://mirrors.linuxeye.com/oneinstack-full.tar.gz
tar zxvvf oneinstack-full.tar.gz

cd /usr/local/src/ && ./oneinstack/install.sh --reboot