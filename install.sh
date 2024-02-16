#! /bin/bash
set -eo pipefail

$DOTFILES=$HOME/dotfiles
$DOTVIM=$HOME/.vim

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git gh vim universal-ctags

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)

git clone git@github.com:msrose/dotfiles.git $DOTFILES

ln -s $DOTFILES/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/gitignore $HOME/.gitignore
ln -s $DOTFILES/zshrc $HOME/.zshrc

git clone git@github.com:msrose/dotvim.git $DOTVIM

source $DOTVIM/install.sh

source $DOTFILES/node/install.sh
