# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "raring"

  config.vm.box_url = "http://cloud-images.ubuntu.com/raring/current/raring-server-cloudimg-vagrant-amd64-disk1.box"

  config.vm.hostname = "penelope"

  config.vm.network :private_network, ip: "172.27.23.13"

  config.vm.synced_folder "../", "/git"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "init.pp"
  end

  config.vm.provision :shell, :path => "clone.sh"
end
