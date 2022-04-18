#!/bin/sh
set -ex

mkdir -p /home/vagrant/src
cd /home/vagrant/src
git clone https://github.com/RTimothyEdwards/magic
cd magic

./configure --with-opengl
make 
make install
