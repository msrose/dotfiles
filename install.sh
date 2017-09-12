#! /bin/bash
set -e

$DOTFILES=$HOME/dotfiles
$DOTVIM=$HOME/.vim

git clone git@github.com:msrose/dotfiles.git $DOTFILES

ln -s $DOTFILES/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/gitignore $HOME/.gitignore
ln -s $DOTFILES/bashrc $HOME/.bashrc

git clone git@github.com:msrose/dotvim.git $DOTVIM

source $DOTVIM/install.sh

source $DOTFILES/node/install.sh
