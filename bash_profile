export NVM_DIR="/Users/michael/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias ls="ls -FG"
export PS1="∫ \e[1;36m\u\e[m \d \@ \e[1;32m\w\e[m\e[1;35m\$(__git_ps1)\e[m ∫\nΣ "
