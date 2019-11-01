#!/bin/bash
# Initial linux machine Setup
# Author : Pratik Raj
#
# set software sources to server for united states
#
## By : https://github.com/rajpratik71

chmod a+x initial-setup.sh

sudo apt-get --allow-unauthenticated update

# Installing build essentials
sudo apt-get --allow-unauthenticated --no-install-recommends install -y build-essential libssl-dev nano git zsh curl wget

#Setting up password login
sudo passwd $USER

# Adding sudo rights
sudo adduser $USER sudo

#Some System tools
sudo apt-get install -y deborphan


# KVM acceleration and cpu checker
sudo apt-get --allow-unauthenticated --no-install-recommends install -y cpu-checker
sudo apt-get --allow-unauthenticated --no-install-recommends install -y qemu-kvm ubuntu-vm-builder bridge-utils
sudo apt-get --allow-unauthenticated --no-install-recommends install -y virt-manager

# RPM and alien - sometimes used to install software packages
sudo apt-get --allow-unauthenticated --no-install-recommends install -y rpm
sudo apt-get --allow-unauthenticated --no-install-recommends install -y alien dpkg-dev debhelper


# Some general purpose system management tools
sudo apt-get --allow-unauthenticated --no-install-recommends install -y bum gtkorphan bleachbit tlp

# Switching shell to oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
