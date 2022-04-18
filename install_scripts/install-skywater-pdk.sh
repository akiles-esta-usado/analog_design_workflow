#!/bin/sh
set -ex

# Descargar Skywater PDK
##########################

mkdir -p /home/vagrant/src
cd /home/vagrant/src

git clone https://github.com/google/skywater-pdk
cd skywater-pdk
# Revisar http://www.opencircuitdesign.com/open_pdks/index.html para ver todo
git submodule init libraries/sky130_fd_io/latest
git submodule init libraries/sky130_fd_pr/latest
git submodule init libraries/sky130_fd_sc_hd/latest
git submodule init libraries/sky130_fd_sc_hvl/latest
git submodule init libraries/sky130_fd_sc_hdll/latest
git submodule init libraries/sky130_fd_sc_hs/latest
git submodule init libraries/sky130_fd_sc_ms/latest
git submodule init libraries/sky130_fd_sc_ls/latest
git submodule init libraries/sky130_fd_sc_lp/latest
git submodule update
make timing

