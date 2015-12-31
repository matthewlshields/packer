#!/bin/bash

# Update the box
apt-get -y update >/dev/null
apt-get -y install facter curl
#linux-headers-$(uname -r) build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev curl unzip >/dev/null

