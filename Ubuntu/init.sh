#!/bin/bash
 # 安装基本组件
apt-get update
apt autoremove -y
apt-get upgrade -y
sed -i 's/enforcing/disabled/g' /etc/selinux/config
apt-get install -y vim openssh* ntp wget screen bash-completion net-tools
apt-get -y update libssh*
apt install -y xfsprogs iptables-persistent
