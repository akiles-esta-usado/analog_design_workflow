# Vagrant Development Environment for Open_PDKs

This project is still work-in-progress.


## Installation

### Dependencies

* Vagrant
* VirtualBox 6.1.32 (fixed in installation scripts)
* plugin ``vagrant-vbguest``
* plugin ``vagrant-reboot``


~~~bash
$ vagrant plugin install vagrant-vbguest
$ vagrant plugin install vagrant-reload
~~~

If the plugins are not installed, the construction will fail.


### Installation process

Just "compile" the vm.

~~~bash
vagrant up
~~~

## Vagrant Usage
 
~~~bash
# Start vm
vagrant up

# Reload vm
vagrant reload

# poweroff vm
vagrant halt

# Connect ssh
vagrant ssh
~~~


For more information, see https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4


## References

Based on https://github.com/heidemn/vagrant-bionic-desktop

