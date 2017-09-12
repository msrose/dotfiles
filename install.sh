#! /bin/bash
set -e

$DOTFILES=$HOME/dotfiles

git clone git@github.com:msrose/dotfiles.git $DOTFILES

ln -s $DOTFILES/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/gitignore $HOME/.gitignore
ln -s $DOTFILES/bashrc $HOME/.bashrc

source $DOTFILES/node/install.sh
