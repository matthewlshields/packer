#!/bin/bash

# Bail if we are not running inside VirtualBox.
if [[ $(facter productname) != "VirtualBox" ]]; then
    exit 0
fi

yum install -y kernel-headers kernel-devel
#yum clean all

mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
#ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso