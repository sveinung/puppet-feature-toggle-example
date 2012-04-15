# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :host1 do |host_config|
    host_config.vm.box = "lucid32"
    host_config.vm.network :hostonly, "10.10.0.101"
    host_config.vm.forward_port "host1_web", 8080, 8080

    host_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "host1.pp"
      puppet.module_path = "puppet/modules"
    end
  end

  config.vm.define :host2 do |host_config|
    host_config.vm.box = "lucid32"
    host_config.vm.network :hostonly, "10.10.0.102"
    host_config.vm.forward_port "host2_web", 8080, 8081

    host_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "host2.pp"
      puppet.module_path = "puppet/modules"
    end
  end
end
