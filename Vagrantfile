# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  # Optional - enlarge disk (will also convert the format from VMDK to VDI):
  #config.disksize.size = "30GB"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    #vb.memory = 2048
    #vb.cpus = 2
    #vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    #vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
  end


  config.vm.provision "shell", path: "install-dependencies.sh"
  config.vm.provision "shell", path: "install-magic.sh"
  config.vm.provision "shell", path: "install-skywater-pdk.sh"
  #config.vm.provision "shell", path: "install-open_pdks.sh"
  
  config.vm.provision "shell",
    inline: "echo Vagrant has Finished"
end
