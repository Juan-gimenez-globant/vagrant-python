# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = ">=20170615.0.0"
  config.vm.box_check_update = true

  required_plugins = %w( vagrant-vbguest vagrant-disksize )
  _retry = false
  required_plugins.each do |plugin|
      unless Vagrant.has_plugin? plugin
          system "vagrant plugin install #{plugin}"
          _retry=true
      end
  end

  if (_retry)
      exec "vagrant " + ARGV.join(' ')
  end
  config.disksize.size = "80GB"

  if Vagrant.has_plugin?("vagrant-vbguest") then
    config.vbguest.auto_update = false
  end

  config.vm.provision :shell, :path => "./scripts/init.sh", \
    :privileged   => true
  config.vm.provision :shell, :path => "./scripts/pyenv_init.sh", \
    :privileged   => false
  config.vm.provision :shell, :path => "./scripts/root_setting.sh", \
    :privileged   => true
  config.vm.provision :shell, :path => "./scripts/user_setting.sh", \
    :privileged   => false
end
