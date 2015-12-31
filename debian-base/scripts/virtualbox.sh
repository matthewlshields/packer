#!/bin/bash -v

# Bail if we are not running inside VirtualBox.
if [[ `facter virtual` != "virtualbox" ]]; then
    exit 0
fi

apt-get install -y gcc build-essential linux-headers-$(uname -r)

mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso
