#!/bin/bash
# Initial linux machine Setup
# Author : Pratik Raj
#
# set software sources to server for united states
#
## By : https://github.com/rajpratik71

sudo apt-get update

# Installing build essentials
sudo apt-get install -y build-essential libssl-dev nano git zsh curl wget

#Setting up password login
sudo passwd $USER

# Adding sudo rights
sudo adduser $USER sudo

# Switching shell to oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# KVM acceleration and cpu checker
sudo apt-get install -y cpu-checker
sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get install -y virt-manager
sudo apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# RPM and alien - sometimes used to install software packages
sudo apt-get install -y rpm
sudo apt-get install -y alien dpkg-dev debhelper
