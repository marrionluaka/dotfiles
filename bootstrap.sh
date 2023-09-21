#!/bin/bash

brew install \
    bash \
	zsh \
    curl \
    fd \
    git \
    gnu-sed \
    htop \
    ripgrep \
    vim

# Add the brew zsh shell to the list of allowed shells
sudo bash -c 'echo /bin/zsh >> /etc/shells'
# Change the default shell to use zsh
chsh -s /bin/zsh

# vim
mv ~/.vim ~/.vim.bak
ln -s ~/dotfiles/vim ~/.vim

# gitconfig
echo "[include]
    path = ~/dotfiles/gitconfig"  >> ~/.gitconfig

# vimrc
echo "so ~/dotfiles/vimrc" >> ~/.vimrc

# zshrc
echo "source ~/dotfiles/zshrc" >> ~/.zshrc
