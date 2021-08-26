require 'yaml'

required_plugins = %w( vagrant-hostmanager vagrant-vbguest )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end
#Detect the host OS to run some conditional operations later
module OS
    def OS.windows?
        (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    end

    def OS.mac?
        (/darwin/ =~ RUBY_PLATFORM) != nil
    end

    def OS.unix?
        !OS.windows?
    end

    def OS.linux?
        OS.unix? and not OS.mac?
    end
end

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.network "private_network", ip: "192.168.10.11"
  config.vm.hostname = "blockchain"
  #config.vm.synced_folder "./contracts", "/home/vagrant/contracts", create:true
  #config.vm.synced_folder "../web", "/var/www/html", create:true
  config.vm.provision :shell, path: "bootstrap.sh"
      # sync: folder './' (host machine) -> folder '/app' (guest machine)
      # we want nfs on windows
      if OS.windows?
          config.vm.synced_folder './', '/app', type: 'nfs'
      else
          config.vm.synced_folder './', '/app', owner: 'vagrant', group: 'vagrant'
      end

  # Port forwarding
  config.vm.network :forwarded_port, guest: 8545, host: 8545
  config.vm.network :forwarded_port, guest: 30303, host: 30303, protocol: "udp"
end
