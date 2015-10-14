#!/bin/bash

echo "Updating packages"
sudo apt-get update

echo "Installing tmux and tmuxinator"
sudo apt-get install tmux
sudo gem install tmuxinator
echo "Install complete"

echo "Moving old files to a new folder called old"
if [ -d $HOME/old ]; then echo 'Exists'; else sudo mkdir $HOME/old; fi
if [ -f $HOME/.gitconfig ]; then sudo mv $HOME/.gitconfig $HOME/old; fi
if [ -f $HOME/.gitignore_global ]; then sudo mv $HOME/.gitignore_global $HOME/old; fi
if [ -f $HOME/.tmux.conf ]; then sudo mv $HOME/.tmux.conf $HOME/old; fi
if [ -f $HOME/.vimrc ]; then sudo mv $HOME/.vimrc $HOME/old; fi
sudo echo "Move ~Complete"

echo "Symlink - Start"
sudo ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
sudo ln -s $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global
sudo ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
sudo ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
echo "Symlink - Complete"

echo "Vim Setup - Start"
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "Vim Setup - Complete"
