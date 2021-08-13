#!/bin/bash
# Author  : X <ngx1990@gmail.com>
# Time: 2021-08-13

# 安装基本组件
yum clean all
yum makecache fast
systemctl stop firewalld.service
systemctl disable firewalld.service
sed -i 's/enforcing/disabled/g' /etc/selinux/config
yum -y install vim openssh* ntp wget screen bash-completion net-tools epel-release
yum -y update libssh* epel-release
service ntpd stop
ntpdate time.nist.gov
sed -i 's/0.centos.pool.ntp.org/time.nist.gov/g' /etc/ntp.conf
chkconfig ntpd on
service ntpd restart