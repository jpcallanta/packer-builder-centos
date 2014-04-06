#!/bin/sh

# Install Open VMware Tools repo
echo "Installing open-vm-tools..."
rpm --import http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub
rpm --import http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub
echo -e "[vmware-tools]\nname=VMware Tools\nbaseurl=http://packages.vmware.com/tools/esx/4.1latest/rhel6/\$basearch\nenabled=1\ngpgcheck=1" > /etc/yum.repos.d/vmware-tools.repo
yum -y update
yum -y install vmware-open-vm-tools-nox
