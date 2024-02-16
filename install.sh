#! /bin/bash
set -e

$DOTFILES=$HOME/dotfiles
$DOTVIM=$HOME/.vim

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)

git clone git@github.com:msrose/dotfiles.git $DOTFILES

ln -s $DOTFILES/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/gitignore $HOME/.gitignore
ln -s $DOTFILES/zshrc $HOME/.zshrc

git clone git@github.com:msrose/dotvim.git $DOTVIM

source $DOTVIM/install.sh

source $DOTFILES/node/install.sh
