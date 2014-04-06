#!/bin/sh

echo "Installing chef provisioner"
yum -y install openssl-devel
cd /tmp

wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz && \
  tar zxvf ruby-2.1.1.tar.gz && \
  cd ruby-2.1.1 && \
  ./configure && \
  make && make install

gem install chef

echo "Installing puppet"
cd /tmp
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

rpm -Uvh epel-release-6*.rpm && \
  yum -y install puppet