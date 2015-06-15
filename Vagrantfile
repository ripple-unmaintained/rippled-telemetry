# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

 config.vm.define "server" do |server|
    server.vm.network :public_network, ip: "192.168.50.4"
    server.vm.network :forwarded_port, guest: 3000, host: 3000
    server.vm.network :forwarded_port, guest: 4567, host: 4567
    server.vm.network :forwarded_port, guest: 5671, host: 5671

    server.vm.provision :ansible do |ansible|
      ansible.playbook = "ansible/sensu-server.yml"
    end
  end

  config.vm.define "client" do |client|
    client.vm.network :public_network, ip: "192.168.50.3"

    client.vm.provision :ansible do |ansible|
      ansible.playbook = "ansible/sensu-client.yml"
    end
  end
end

