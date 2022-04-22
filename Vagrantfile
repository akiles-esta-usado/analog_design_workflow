# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vagrant.plugins = ["vagrant-reload", "vagrant-vbguest"]

  # Try other distros, maybe newer ubuntu distros or centos, arch, etc.
  config.vm.box = "hashicorp/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end



  config.vm.provision "shell", path: "install_scripts/install-dependencies.sh"

  config.vm.provision :reload

  config.vm.provision "shell", path: "install_scripts/install-magic.sh"
  config.vm.provision "shell", path: "install_scripts/install-open_pdks.sh"

end
