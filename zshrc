
autoload -U colors && colors
autoload -Uz vcs_info

precmd () {
	vcs_info
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats "%F{magenta}%b%f"

prompt() {
  if [ -d .git ]; then
    echo '%1~ (' ${vcs_info_msg_0_} ') %F{yellow}→%f '
  else
    echo '%1~ %F{yellow}→%f '
  fi;
}

setopt PROMPT_SUBST

PROMPT='$(prompt)'
RPROMPT='%*'

alias cdd="cd ~/Developer/"

function notify {
	osascript -e "display notification \"This is a message\" with title \"Hey!\""
}

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
