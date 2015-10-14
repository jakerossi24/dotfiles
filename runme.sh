#!/bin/bash

echo "Moving old files to a new folder called old"
mkdir $HOME/old
mv $HOME/.gitconfig $HOME/old
mv $HOME/.gitignore_global $HOME/old
mv $HOME/.tmux.conf $HOME/old
mv $HOME/.vimrc $HOME/old
echo "Move ~Complete"

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
