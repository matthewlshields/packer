#!/bin/bash

# Increase the yum timeout because some repos take a bit longer
grep -v "timeout" /etc/yum.conf > templist && mv templist /etc/yum.conf
echo 'timeout=180' >> /etc/yum.conf

# Update the box
yum clean all

# Install 
yum -y install deltarpm wget curl rsync bzip2
yum -y install epel-release 
yum -y install facter