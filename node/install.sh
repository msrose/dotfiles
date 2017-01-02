curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

BASHRC=~/.bashrc
BASHPROFILE=~/.bash_profile

if [[ -e $BASHRC ]]; then
  source $BASHRC
else
  if [[ -e $BASHPROFILE ]]; then
    source $BASHPROFILE
  fi
fi

nvm install --lts
node --version
npm --version
