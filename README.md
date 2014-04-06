packer-builder-centos
=====================

packer vagrant box builder for CentOS 6.5

[Packer: http://packer.io](http://packer.io)

[Vagrant: http://vagrantup.com](http://vagrantup.com)

Usage
=====

If you have packer installed you should be able to run it like so:
**packer build configs/centos-vbox-iso.json** and it will output a vagrant box file.

NOTE
====

Keep in mind that Vagrant's VMware providers are not free and a licesne can be purchased here: [http://www.vagrantup.com/vmware](http://www.vagrantup.com/vmware)
