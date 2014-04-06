#!/bin/sh

echo "Installing virtualbox guest..."
yum -y install kernel-headers
yum -y install kernel-devel
yum -y install gcc
mkdir -pv /media/cdrom
mount -t iso9660 -o loop VBoxGuestAdditions.iso /media/cdrom
cd /media/cdrom
./VBoxLinuxAdditions.run