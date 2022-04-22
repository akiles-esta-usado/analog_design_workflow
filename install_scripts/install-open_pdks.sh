#!/bin/sh
set -ex

mkdir -p /home/vagrant/src
cd /home/vagrant/src
git clone https://github.com/RTimothyEdwards/open_pdks.git
cd open_pdks

./configure
make
make install
