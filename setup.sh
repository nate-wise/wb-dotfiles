#!/bin/zsh

pwd
rm -rf ~/.oh-my-zsh
rm -rf ~/.config
ln -s ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.config ~/.config

export CACHE_DIR=/usr/local/cache

mkdir -p /usr/local/bundle
chmod -R 777 /usr/local/bundle

mkdir -p /usr/local/lib/ruby
chmod -R 777 /usr/local/lib/ruby

chmod -R 777 /usr/local/bin
chmod -R 777 $CACHE_DIR

