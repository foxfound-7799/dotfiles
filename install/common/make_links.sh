#!/bin/bash

config_file_dir=~/dotfiles/config

# Zsh
ln -sfn ${config_file_dir}/zsh/zshenv ~/.zshenv
ln -sfn ${config_file_dir}/zsh/zshrc ~/.zshrc
ln -sfn ${config_file_dir}/zsh/zsh ~/.zsh
ln -sfn ${config_file_dir}/zsh/p10k.zsh ~/.p10k.zsh

# Tmux
ln -sfn ${config_file_dir}/tmux/tmux.conf ~/.tmux.conf

# Alacritty
ln -sfn ${config_file_dir}/alacritty ~/.config/alacritty
