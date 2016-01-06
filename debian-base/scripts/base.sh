#!/bin/bash

# Give the vagrant user sudo rights without prompting for a password
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/vagrant

# Make sure the apt source list isn't referencing a CD-ROM
grep -v "cdrom" /etc/apt/sources.list > templist && mv templist /etc/apt/sources.list

# Update the box
apt-get update > /dev/null
apt-get -y upgrade
apt-get -y install facter curl rsync