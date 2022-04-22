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
    lightdm-gtk-greeter

# Magic: m4 -> mesa
# Entorno Gráfico: xfce4 -> virtualbox-guest-x11

## Remover caché de apt-get
rm -rf /var/lib/apt/lists/*


## Ajustar idioma de teclado
L='es' && sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"'$L'\"/g' /etc/default/keyboard
