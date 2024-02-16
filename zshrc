integral="%(?:%{$fg_bold[green]%}∫:%{$fg_bold[red]%}∫)"
export PROMPT="$integral %{$fg[cyan]%}%n%{$reset_color%}%(1j: (%j):) %{$fg[cyan]%}%~%{$reset_color%} "
PROMPT+='$(git_prompt_info)'
PROMPT+="$integral%{$reset_color%}"$'\n'"Σ "

export NVM_DIR="/Users/michael/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
