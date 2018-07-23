# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  #########################################################
  #                                                       #
  # The operating system to be used within the VM.        #
  #                                                       #
  #########################################################
  config.vm.box = "ubuntu/xenial64"

  #########################################################
  #                                                       #
  # The memory and cpus to be allocated to the VM.        #
  #                                                       #
  #########################################################
  config.vm.provider "virtualbox" do |v|
    v.memory = 4048
    v.cpus = 4
  end

  #########################################################
  #                                                       #
  # Shared folders: host => guest                         #
  #                                                       #
  #########################################################
  config.vm.synced_folder "./", "/var/www/apps"

  #########################################################
  #                                                       #
  # Forward port 80 to 8089.                              #
  #                                                       #
  #########################################################
  config.vm.network "forwarded_port", guest: 80, host: 8094
  config.vm.network "forwarded_port", guest: 8081, host: 8095
  config.vm.network "forwarded_port", guest: 5000, host: 8096

  #########################################################
  #                                                       #
  # Amend /root/profile (preventing 'tty' error message)  #
  #                                                       #
  #########################################################
  config.vm.provision "root-profile", keep_color: true, type: "shell", path: "./provision/root_profile.sh"

  #########################################################
  #                                                       #
  # Provision the VM with Nginx.                          #
  #                                                       #
  #########################################################
  config.vm.provision "nginx", keep_color: true, type: "shell", path: "./provision/nginx.sh"

  #########################################################
  #                                                       #
  # Provision the VM with Mongo.                          #
  #                                                       #
  #########################################################
  config.vm.provision "mongo", keep_color: true, type: "shell", path: "./provision/mongo.sh"

  #########################################################
  #                                                       #
  # Provision the VM with Curl.                           #
  #                                                       #
  #########################################################
  config.vm.provision "curl", keep_color: true, type: "shell", path: "./provision/curl.sh"

  #########################################################
  #                                                       #
  # Provision the VM with Node.                           #
  #                                                       #
  #########################################################
  config.vm.provision "node", keep_color: true, type: "shell", path: "./provision/node.sh"

  #########################################################
  #                                                       #
  # Provision the VM with Git.                            #
  #                                                       #
  #########################################################
  config.vm.provision "git", keep_color: true, type: "shell", path: "./provision/git.sh"

  #########################################################
  #                                                       #
  # Provision the VM with Vim.                            #
  #                                                       #
  #########################################################
  config.vm.provision "vim", keep_color: true, type: "shell", path: "./provision/vim.sh"

  #########################################################
  #                                                       #
  # Provision the VM with Vundle.                         #
  #                                                       #
  #########################################################
  config.vm.provision "vundle", keep_color: true, type: "shell", path: "./provision/vundle.sh"

  #########################################################
  #                                                       #
  # Provision the VM with PM2.                            #
  #                                                       #
  #########################################################
  config.vm.provision "pm2", keep_color: true, type: "shell", path: "./provision/pm2.sh"

  #########################################################
  #                                                       #
  # Create /var/www/apps dir.                             #
  #                                                       #
  #########################################################
  config.vm.provision "video-visit-app-dir", keep_color: true, type: "shell", path: "./provision/apps_dir.sh"

  #########################################################
  #                                                       #
  # Copy the config files                                 #
  #                                                       #
  #########################################################
  config.vm.provision "file", source: "./config/", destination: "/home/vagrant/"

  #########################################################
  #                                                       #
  # Copy the script files                                 #
  #                                                       #
  #########################################################
  config.vm.provision "file", source: "./scripts/", destination: "/home/vagrant/"

  #########################################################
  #                                                       #
  # Move Nginx conf.                                      #
  #                                                       #
  #########################################################
  config.vm.provision "nginx_conf", keep_color: true, type: "shell", path: "./provision/nginx_conf.sh"

  #########################################################
  #                                                       #
  # Move Nginx sites-enabled.                             #
  #                                                       #
  #########################################################
  config.vm.provision "nginx_sites_enabled_default", keep_color: true, type: "shell", path: "./provision/nginx_sites_enabled_default.sh"

  #########################################################
  #                                                       #
  # Copy PM2 conf.                                        #
  #                                                       #
  #########################################################
  config.vm.provision "pm2_config", keep_color: true, type: "shell", path: "./provision/pm2_config.sh"

  #########################################################
  #                                                       #
  # Create PM2 user.                                      #
  #                                                       #
  #########################################################
  config.vm.provision "pm2_user", keep_color: true, type: "shell", path: "./provision/pm2_user.sh"

  #########################################################
  #                                                       #
  # Move vimrc.                                           #
  #                                                       #
  #########################################################
  config.vm.provision "vimrc", keep_color: true, type: "shell", path: "./provision/vimrc.sh"

  #########################################################
  #                                                       #
  # Move bashrc.                                          #
  #                                                       #
  #########################################################
  config.vm.provision "bashrc", keep_color: true, type: "shell", path: "./provision/bashrc.sh"

  #########################################################
  #                                                       #
  # Move bash_aliases.                                    #
  #                                                       #
  #########################################################
  config.vm.provision "bash_aliases", keep_color: true, type: "shell", path: "./provision/bash_aliases.sh"

  #########################################################
  #                                                       #
  # Move bash_functions.                                  #
  #                                                       #
  #########################################################
  config.vm.provision "bash_functions", keep_color: true, type: "shell", path: "./provision/bash_functions.sh"

  #########################################################
  #                                                       #
  # Create ssh key.                                       #
  #                                                       #
  #########################################################
  config.vm.provision "ssh_key", keep_color: true, type: "shell", path: "./provision/ssh_key.sh"

  #########################################################
  #                                                       #
  # Add Python, Pip, Heroku and Postgres                  #
  #                                                       #
  #########################################################
  config.vm.provision "ssh_key", keep_color: true, type: "shell", path: "./provision/python.sh"
  config.vm.provision "ssh_key", keep_color: true, type: "shell", path: "./provision/pip.sh"
  config.vm.provision "ssh_key", keep_color: true, type: "shell", path: "./provision/heroku.sh"
  config.vm.provision "ssh_key", keep_color: true, type: "shell", path: "./provision/postgres.sh"

  #########################################################
  #                                                       #
  # Display the 'footer' message.                         #
  #                                                       #
  #########################################################
  config.vm.provision "footer", keep_color: true, type: "shell", path: "./provision/footer.sh"
end
