# README

> This package contains a Vagrant virtual machine definition for MEAN stack development.

---

## Contents

* Overview
* Setup
* Installing Vagrant and VirtualBox
    * Linux
    * Mac
    * Windows
* Clone vagrant-bash-provision
    * Linux and Mac
    * Windows
* Provisioning the VM
* Adding the generated SSH key
* Logging into the VM
    * Linux and Mac
    * Windows
* Halting and destroying the VM
* Shared folders
    * Default
    * Apps
    * Altering
* Development
    * Provision
    * Config
    * Scripts
* Named provisions
    * Application
    * Utility
    * Config
* Changing port values
* Common Vagrant commands
* Vagrantfile
    * Shell provisioning
* Restart provisioning

---

## Overview

This package contains a [Vagrant](https://www.vagrantup.com) definition for a [Virtual Box](https://www.virtualbox.org) based, [Ubuntu 14.04 (LTM)](http://releases.ubuntu.com/14.04/) Virtual Machine (VM).

> Vagrant is a tool that can be used to provision a VM (and the applications contained within it), as defined by a [Vagrantfile](https://bitbucket.org/softcogs/vagrant-bash-provision/src/afc7804fb01345a6d86e715e3d49725883264aa2/Vagrantfile?at=master&fileviewer=file-view-default).

> The Vagrantfile within this package defines a VM for MEAN development.

Please read the __Setup__ section directly below to begin creating the VM.

---

## Setup

Setting up a VM (using the Vagrantfile within this package) should take approximately 20 minutes (depending upon download speed).

Setup the VM by completing the following steps:

* Install Vagrant and VirtualBox
* Clone vagrant-bash-provision
* Provision the VM
* Add the generated [SSH key](https://en.wikipedia.org/wiki/Ssh-keygen) into your repo account.
* Start the VM

Once the above steps are complete, apps will be accessible from a browser (on your host machine) via `http://localhost:8091/`

> If port 8091 is engaged, already, on your host machine, then please read __Changing port values__ (towards the bottom of this document) before continuing.

Please begin the setup by reading the __Installing Vagrant and VirtualBox__ section of this document, immediately below.

---


## Installing Vagrant and VirtualBox

This section describes how to install Vagrant and VirtualBox for Linux, Mac and Windows machines, using CLI package managers:

### Linux *(Debian / Ubuntu)*

Open a terminal and enter (or copy and paste) the following:

```bash

# Install Vagrant and VirtualBox
sudo apt-get install vagrant
sudo apt-get install virtualbox

# If not installed, already, then please install Git
sudo apt-get install git
```

Please continue with the __Clone vagrant-bash-provision__ section further below.

---

### Mac

Open a terminal and enter (or copy and paste) the following:

```bash

# Install the Cask extension for the Brew package manager
brew tap caskroom/cask
brew install cask

# Install VirtualBox
brew cask install https://raw.githubusercontent.com/caskroom/homebrew-cask/e8816187ae43f52b598f15f45b3453e22727ac99/Casks/virtualbox.rb

# Install Vagrant
brew cask install vagrant

# Install Vagrant completion
brew tap homebrew/completions
brew install vagrant-completion
```

Please continue with the __Clone vagrant-bash-provision__ section further below.

---

### Windows *(PowerShell)*

Open a PowerShell console and enter (or copy and paste) the following:

```bash

# If not installed, already, please install the PowerShell, Windows package manager, Choco
Set-ExecutionPolicy Bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Use Choco to install Vagrant and VirtualBox
choco install vagrant
choco install virtualbox
```

Please continue with the __Clone vagrant-bash-provision__ section below.

---


## Clone vagrant-bash-provision

This section contains information about cloning this, the `vagrant-bash-provision` package, which contains the custom Vagrantfile VM definition.

In order to perform the clone, please follow the steps below (for Linux and Mac, or Windows):

### Linux and Mac

Open a terminal and enter (or copy and paste) the following:

```bash
cd ~/
git clone https://bitbucket.org/softcogs/vagrant-bash-provision
```

> Please ensure that the above `git clone` command is __not__ run with `sudo` permissions.

> In fact, using `sudo` would prevent Vagrant from being able to write to the *underlying* `vagrant-bash-provision/.vagrant` dir.

> Using `sudo`, moreover, would prevent Vagrant from being able to start, displaying, instead, a permissions error message.


Please continue with the __Provisioning Vagrant__ section further below.

---

### Windows

Open a PowerShell console and enter (or copy and paste) the following:

```bash
cd C\:Users\[Username]\
git clone https://bitbucket.org/softcogs/vagrant-bash-provision
```

Alternatively, download and install [Git for Windows](https://git-for-windows.github.io) and perform the steps described above.

Please continue with the __Provisioning Vagrant__ section below.

---

## Provisioning Vagrant

`vagrant up` is an initialising command. The first time that it is called (during the lifetime of a VM), the provisioning declarations within the associated Vagrantfile will be processed, setting up the VM, as required.

Every subsequent `vagrant up` call will initialise the already provisioned VM. In addition, the `vagrant up` command uses the Vagrantfile from the root of the directory within which it was called.

In order to run the `vagrant up` command, open a console / terminal, and then enter (or copy and paste) the following:

```bash

# CD into the vagrant-bash-provision directory
cd vagrant-bash-provision

# Run the 'vagrant up' command (from the root of the cloned vagrant-bash-provision dir)
vagrant up
```

If you encounter any problems and need to restart the provisioning process, please see __Restart provisioning__ towards the bottom of this document.


Otherwise, please continue with the __Adding the generated SSH key__ section below.

---

## Adding the generated SSH key

The `vagrant up` command (described immediately above) outputs status information during the provisioning process to the console / terminal.

Once the process is complete, the displayed information will contain the public part of a newly generated SSH key.

> The key will be shown between two rows of asterisks.

For example:

```bash
************************************************************************
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDh9c2RzWUCBtzfumjh
C2e2K/v/onjsaWKrqSRVFWfeo9zGdRYWCKAgYefs+dL2VGJKDeTlt1GgBSnB1YzSsnbap6jx

root@vagrant-ubuntu-trusty-64
************************************************************************
```

Copy the (possibly multi-line) SSH key from `ssh-rsa` onwards (including `ssh-rsa`). However, __do not__ include the final prompt `root@vagrant-ubuntu-trusty-64` within the copied text.

Once the key has been copied, login to your SoftCogs [BitBucket](https://bitbucket.org/softcogs/) account, and then:

* Click `View profile`
* Click `Settings`
* Click `SSH keys` (within the SECURITY sub-menu)
* Click `Add Key`
* Paste the copied key into the `Key*` field.
* Give the new key a `label`, perhaps 'vagrant-ubuntu'
* Click `Save`

*Please note that part way through the provisioning process, the console / terminal may split, with the SSH key being shown in the middle of the screen once the process comes to an end.*

> The SSH key will be generated once during the lifetime of the VM.

> The public part of the SSH key can be shown on the host (without any provisioning taking place) by running `vagrant provision --provision-with footer` on an initialised VM (that is, after calling `vagrant up`).


As mentioned further above, if you encounter any problems and need to restart the provisioning process, please see __Restart provisioning__ towards the bottom of this document.


Otherwise, please continue with the __Logging into the VM__ section below.

---

## Logging into the VM

Having provisioned the VM, and added the generated SSH key to BitBucket, the VM can now be accessed as follows:

### Linux and Mac
```bash

# CD into the vagrant-bash-provision directory
cd vagrant-bash-provision

# Login to the VM
vagrant ssh
```

Please continue with the __Running vvsetup__ section futher below.

---

### Windows

As described above, start the VM:

```bash
# CD into the vagrant-bash-provision directory
cd vagrant-bash-provision

# Start the VM
vagrant up
```

Then open an instance of [Putty](http://www.putty.org) and login to `127.0.0.1:2222`

Please continue with the __Running vvsetup__ section below.

---

## Halting and destroying the VM

An example of starting and then halting a VM:

```bash

# CD into the vagrant-bash-provision package (on the host)
cd vagrant-bash-provision

# Initialize or provision the VM by calling 'vagrant up' (on the host)
vagrant up

# Login to the VM using 'vagrant ssh' (on the host)
vagrant ssh

# Exit from the VM (on the guest)
exit

# Halt (but DO NOT destroy) the VM, ensuring that changes are saved
vagrant halt
```

An example of destroying a VM:

```bash

# CD into the vagrant-bash-provision package (on the host)
cd vagrant-bash-provision

# Call the 'vagrant destroy' command to remove the VM, entirely.
# Please note that this command will remove the generated SSH key,
# which should be deleted from BitBucket.
vagrant destroy

# Call the 'vagrant global-status' command, which lists available VMs, to ensure that the VM has been destroyed.
vagrant global-status
```

Further [Vagrant CLI commands](https://www.vagrantup.com/docs/cli/reload.html)

Please continue with the __Shared folders__ section below.

---

## Shared folders

### Default

By default, the contents of the `vagrant-bash-provision` dir (on the host) will be available at `/vagrant` (on the guest).

---

### Apps

In addition, `vagrant-bash-provision/apps` (on the host) is shared (or synced) with `/var/www/apps` (on the guest).

---

### Altering

The source and destination of the synced folder, currently `apps`, may be changed by altering the following line within the Vagrantfile.

`config.vm.synced_folder "./apps", "/var/www/apps"`

Once such an alteration has been made, reload the VM using:

```bash
# CD into the vagrant-bash-provision package (on the host)
cd vagrant-bash-provision

# The following command is the equivalent of 'vagrant halt' followed by 'vagrant up'
# In addition, however, 'vagrant reload' always taken into account Vagrantfile changes.
vagrant reload
```

If relevant, please continue with the __Development__ section below.
___

## Development

### Provision

The majority of the Vagrantfile declarations call Bash scripts that are contained within the `vagrant-bash-provision/provision` directory.

The scripts are processed when the `vagrant up` (first time only) or the `vargrant provision` commands are used.

> Please note that the scripts are not idempotent.

There are three groups of Bash provisioning scripts: __application__, __utility__ and __config__.


The __application__ provisioning scripts each install a single application (in capitals, below) within the VM:

* CURL: `vagrant-bash-provision/provision/curl.sh`

* GIT: `vagrant-bash-provision/provision/git.sh`

* MONGO: `vagrant-bash-provision/provision/mongo.sh`

* NGINX: `vagrant-bash-provision/provision/nginx.sh`

* NODE: `vagrant-bash-provision/provision/node.sh`

* PM2: `vagrant-bash-provision/provision/pm2.sh`

* VIM: `vagrant-bash-provision/provision/vim.sh`

* VUNDLE: `vagrant-bash-provision/provision/vundle.sh`


The __utility__ provisioning scripts are as follows:

* Creates the apps dir for your packages: `vagrant-bash-provision/provision/apps_dir.sh`

* Creates a PM2 user: `vagrant-bash-provision/provision/pm2_user.sh`

* Generates a SSH key: `vagrant-bash-provision/provision/ssh_key.sh`


Lastly, the __config__ provisioning scripts each handle the placement of a single copied config file:

* BASH ALIASES: `vagrant-bash-provision/provision/bash_aliases.sh`

* BASH FUNCTIONS: `vagrant-bash-provision/provision/bash_functions.sh`

* BASHRC: `vagrant-bash-provision/provision/bashrc.sh`

* NGINX CONF: `vagrant-bash-provision/provision/nginx_conf.sh`

* NGINX SITES ENABLED: `vagrant-bash-provision/provision/nginx_sites_enabled_default.sh`

* PM2 CONFIG: `vagrant-bash-provision/provision/pm2_config.sh`

* ROOT PROFILE: `vagrant-bash-provision/provision/root_profile.sh`

* VIM INFO: `vagrant-bash-provision/provision/viminfo.sh`

* VIMRC: `vagrant-bash-provision/provision/vimrc.sh`

---

### Config

The config files (from `vagrant-bash-provision/config`) will be copied into the VM by the Vagrantfile.

They are then moved into the correct position by the __config__ provision scripts (describe above).

The config files are as follows:

#### Bash configs

* .bash_aliases
* .bash_functions
* .bashrc


#### Nginx config

* nginx_sites_enabled_default
* nginx.conf


#### PM2 config

* pm2.config.js


#### Vim configs

* .viminfo
* .vimrc

---

### Scripts

The Bash files within `vagrant-bash-provision/scripts` dir will be copied into `/home/vagrant/scripts` by the Vagrantfile.

Please note that they can __only__ be used (or called) __after__ the VM has been provisioned.

The scripts are as follows:

* `vagrant-bash-provision/scripts/start_nginx.sh`


---

## Named provisions

All of the provisioning scripts may be run individually.

This may be necessary when a change is made to one of the scripts.

This approach means that the overarching provisioning process does not need to be run to test each alteration.

Instead, a single script (from the `provision` directory) may be called, using the `vagrant provision --provision-with *` command.

> Please note that each of the following commands __must__ be run within from within the root of the `vagrant-bash-provision` dir.

> In addition, `vagrant up` __must__ have be called prior to running any of the following commands.

### Application provisions

* CURL: `vagrant provision --provision-with curl`

* GIT: `vagrant provision --provision-with git`

* MONGO: `vagrant provision --provision-with mongo`

* NGINX: `vagrant provision --provision-with nginx`

* NODE: `vagrant provision --provision-with node`

* PM2: `vagrant provision --provision-with pm2`

* VIM: `vagrant provision --provision-with vim`

* VUNDLE: `vagrant provision --provision-with vundle`

### Utility provisions

* PM2 USER: `vagrant provision --provision-with pm2_user`

* SSH KEY: `vagrant provision --provision-with ssh_key`

### Config provisions

If a change is made to one of the config files within the `vagrant-bash-provision/config` dir, in order for the config provisioning to work, as expected, please run the following __file__ command before the required provision script.

* FILE: `vagrant provision --provision-with file`

The above command copies the contents of `vagrant-bash-provision/config` into `/home/vagrant/config` (within the VM).

Once the config files have been copied into the VM, please run any of the following provisioning scripts to move the specified config file to the correct location.

* BASH ALIASES: `vagrant provision --provision-with bash_aliases`

* BASH FUNCTIONS: `vagrant provision --provision-with bash_functions`

* BASHRC: `vagrant provision --provision-with bashrc`

* NGINX CONF: `vagrant provision --provision-with nginx_conf`

* NGINX SITES ENABLED: `vagrant provision --provision-with nginx_sites_enabled_default`

* PM2 CONFIG: `vagrant provision --provision-with pm2_config`

* ROOT PROFILE: `vagrant provision --provision-with root_profile`

* VIM INFO: `vagrant provision --provision-with viminfo`

* VIMRC: `vagrant provision --provision-with vimrc`

---

## Changing port values

By default, the Vagrantfile (within this package) defines a VM that forwards port __80__ (guest) to __8091__ (host).

If port 8091 is engaged, already, on the host, please __Clone vagrant-bash-provision__ (as described further above) and amend the Vagrantfile.

`vagrant-bash-provision/Vagrantfile`

* Specifically, alter the last group of numbers within the following line: `config.vm.network "forwarded_port", guest: 80, host: 8091`

* Once complete, either return to the __Setup__ (as outlined above).
* Alternatively, run `vagrant reload` (on a VM that has been provisioned).

For Linux and Mac users, the following `netstat` command will show the currently listening ports:

```bash
netstat -ap tcp | grep -i "listen"
```

Alternatively, the PID of an existing Vagrant VM may be found using:

```bash
ps -ef | grep vagrant
```

---

## Common Vagrant commands

```bash

# Initializes and / or provisions a VM
vagrant up

# 'vagrant up' only performs provisioning the first time that it is called.
# Force provisioning to take place by using the following command:
vagrant provision

# Logs in to an initialized / provisioned VM
vagrant ssh

# Halts (and saves) an initialized / provisioned VM
vagrant halt

# Reload: equivalent to 'vagrant halt' followed by 'vagrant up'. Takes account of Vagrantfile changes.
vagrant reload

# Destroys a VM
vagrant destroy
```

Further [Vagrant CLI commands](https://www.vagrantup.com/docs/cli/reload.html)

---

## Vagrantfile

### Shell provisioning

The majority of the Vagrantfile's declarations are `shell` provisions, referencing Bash shell scripts within the `./provision` dir.

For example, the following `shell` declaration references the `root_profile.sh` provisioning script.

> config.vm.provision "root-profile", keep_color: true, type: __"shell"__, path: __"./provision/root_profile.sh"__

When `vagrant up` is run (first time only) the declaration above will cause Vagrant to run the code within `root_profile.sh`.

---

## Restart provisioning

If a problem occures during any part of the provisioning / `vvsetup` process, the please enter (or copy and paste) the following into a console / terminal:

```bash

# CD into the vagrant-bash-provision directory
cd vagrant-bash-provision

# If the VM has been created, then destroy it
vagrant destroy

# Remove the underlying .vagrant directory
rm -fr .vagrant

# Remove the contents of the ./apps folder
cd ./apps
rm -fr *

# Restart the provisioning process
vagrant up
```
```
