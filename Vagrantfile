# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|

  config.vm.define 'gocd-prado-builder' do |config|

    config.vm.provider :digital_ocean do |provider, override|
      override.ssh.private_key_path = '~/.ssh/id_rsa'
      override.vm.box = 'digital_ocean'
      override.vm.box_url = "https://github.com/devopsgroup-io/vagrant-digitalocean/raw/master/box/digital_ocean.box"
      provider.token = '35e257ae66694c48b693f845d8e1ffbdfb254ff7a314ba68a044ecd1ca8619dd'
      provider.image = 'ubuntu-14-04-x64'
      provider.region = 'nyc3'
      provider.size = '512mb'
      provider.ssh_key_name = 'go@gocd-prado'
    end

    config.vm.provision :ansible do |ansible|
      ansible.playbook            = 'playbook.yml'
      ansible.verbose             = 'v'
      ansible.host_key_checking   = false
      ansible.limit               = 'all'
    end

  end
end
