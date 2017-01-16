#!/bin/bash

# Bail if we are not running inside VirtualBox.
if [[ $(facter productname) != "VirtualBox" ]]; then
    exit 0
fi

yum install -y dkms

KERN_DIR=/usr/src/kernels/`uname -r`
export KERN_DIR

mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso
