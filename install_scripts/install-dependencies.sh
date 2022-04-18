#!/usr/bin/env bash
set -ex


# https://askubuntu.com/questions/1067929/on-18-04-package-virtualbox-guest-utils-does-not-exist
sudo apt-add-repository multiverse
apt-get update 
#apt-get upgrade -y --no-install-recommends


## Dependencias
###############

#apt-get install -y --no-install-recommends \
apt-get install -y \
    git \
    python3 \
    m4 \
    libx11-dev \
    csh \
    tcl-dev tk-dev \
    mesa-common-dev libglu1-mesa-dev \
    xfce4 \
    lightdm \
    lightdm-gtk-greeter \
    virtualbox-guest-dkms \
    virtualbox-guest-utils \
    virtualbox-guest-x11 \
    linux-headers-$(uname -r) \
    build-essential \
    dkms

# Magic: m4 -> mesa
# Entorno Gráfico: xfce4 -> virtualbox-guest-x11
# Guest Additions: linux-headers -> dkms

## Remover caché de apt-get
rm -rf /var/lib/apt/lists/*


## Instalación de Guest Tools

mkdir -p /home/vagrant/src
cd /home/vagrant/src

wget http://download.virtualbox.org/virtualbox/6.1.32/VBoxGuestAdditions_6.1.32.iso
mkdir -p /media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_6.1.32.iso /media/VBoxGuestAdditions

set +e
sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
set -e

umount /media/VBoxGuestAdditions
rmdir /media/VBoxGuestAdditions
rm VBoxGuestAdditions_6.1.32.iso




## Ajustar idioma de teclado
L='es' && sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"'$L'\"/g' /etc/default/keyboard
