required_plugins = %w( vagrant-hostsupdater )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["development.local"]
  # config.vm.synced_folder "../app" , "/home/ubuntu/app"
  config.vm.provision "shell", path: "provision.sh" , privileged: false 

  # https://www.vagrantup.com/docs/provisioning/file.html
  # config.vm.provision "file", source: "~/devOps/coursework/devEnvironment/provision.sh", destination: "~/etc/nginx/sites-available/"
 
end


