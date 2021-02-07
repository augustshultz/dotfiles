PROMPT='%1~ → '
RPROMPT='%*'

alias cdd="cd ~/Developer/"

function notify {
	osascript -e "display notification \"This is a message\" with title \"Hey!\""
}

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
