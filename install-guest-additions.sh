#!/bin/bash
set -x

sudo apt-get install -y --no-install-recommends linux-headers-$(uname -r) build-essential dkms


mkdir -p /home/vagrant/src
cd /home/vagrant/src

wget http://download.virtualbox.org/virtualbox/6.1.32/VBoxGuestAdditions_6.1.32.iso
mkdir -p /media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_6.1.32.iso /media/VBoxGuestAdditions
sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
umount /media/VBoxGuestAdditions
rmdir /media/VBoxGuestAdditions
rm VBoxGuestAdditions_6.1.32.iso
