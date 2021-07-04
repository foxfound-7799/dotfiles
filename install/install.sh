#!/bin/bash

# Apt
~/dotfiles/install/ubuntu/update_apt_packages.sh
~/dotfiles/install/ubuntu/upgrade_apt_packages.sh
~/dotfiles/install/ubuntu/install_apt_packages.sh
 
# Snap
~/dotfiles/install/ubuntu/install_snap_packages.sh
 
# Zsh
~/dotfiles/install/common/install_zplug.sh

# Golang
~/dotfiles/install/ubuntu/install_golang.sh
~/dotfiles/install/common/install_go_packages.sh
 
# Python
# ~/dotfiles/setup/common/install_pip_packages.sh
# 
# Link
~/dotfiles/install/common/make_links.sh
~/dotfiles/install/ubuntu/make_links.sh
