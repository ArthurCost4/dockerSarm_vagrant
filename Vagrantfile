# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boaxes at https://vagrantcloud.com/search.
machines = {
	"master" => {"memory" => "512", "cpu" => "1", "ip" => "41", "image" => "bento/ubuntu-22.04"},
        "node01" => {"memory" => "512", "cpu" => "1", "ip" => "42", "image" => "bento/ubuntu-22.04"},
        "node02" => {"memory" => "512", "cpu" => "1", "ip" => "43", "image" => "bento/ubuntu-22.04"},
        "node03" => {"memory" => "512", "cpu" => "1", "ip" => "44", "image" => "bento/ubuntu-22.04"}
}

Vagrant.configure("2") do |config| 

	machines.each do |name, conf|
	 config.vm.define "#{name}" do |machine|
	  machine.vm.box = "#{conf["image"]}"
	  machine.vm.hostname = "#{name}"
	  # Change you_network_range example: 192.168.0
	  machine.vm.network "private_network", ip: "you_network_range.#{conf["ip"]}
	  machine.vm.provider "virtualbox" do |vb|
	   vb.name = "#{name}"
	   vb.memory = conf["memory"]
	   vb.cpus = conf["cpu"]

	  end
	  machine.vm.provision "shell", path: "install-docker.sh"
	  
	  if "#{name}" == "master"
		machine.vm.provision "shell", path: "master.sh"
	  else
		machine.vm.provision "shell", path: "worker.sh"
	  end

	 end
	end
end

