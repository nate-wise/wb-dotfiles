#!/bin/zsh

pwd
rm -rf ~/.oh-my-zsh
rm -rf ~/.config
ln -s ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.config ~/.config
