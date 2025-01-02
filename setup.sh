#!/bin/zsh

pwd
rm -rf ~/.oh-my-zsh
rm -rf ~/.config
ln -s ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.config ~/.config

export CACHE_DIR=/usr/local/cache

sudo mkdir -p /usr/local/bundle
sudo chmod -R 777 /usr/local/bundle

sudo mkdir -p /usr/local/lib/ruby
sudo chmod -R 777 /usr/local/lib/ruby

sudo chmod -R 777 /usr/local/bin
sudo chmod -R 777 $CACHE_DIR

