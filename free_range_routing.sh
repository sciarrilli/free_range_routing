#!/bin/bash

# install libyang, libyang-devel, and frr
yum install -y https://ci1.netdef.org/artifact/LIBYANG-YANGRELEASE/shared/build-10/CentOS-7-x86_64-Packages/libyang-0.16.111-0.x86_64.rpm
yum install -y https://ci1.netdef.org/artifact/LIBYANG-YANGRELEASE/shared/build-10/CentOS-7-x86_64-Packages/libyang-devel-0.16.111-0.x86_64.rpm
yum install -y https://github.com/FRRouting/frr/releases/download/frr-7.2/frr-7.2-01.el7.centos.x86_64.rpm

# enable bgpd in daemons file
sed -i "s/bgpd=.*/bgpd=yes/g" /etc/frr/daemons

# enable and start the frr service
systemctl enable frr
systemctl start frr

echo frr is running... 