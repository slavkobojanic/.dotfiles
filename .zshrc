# Path to your oh-my-zsh installation.
export ZSH="/Users/slavko/.oh-my-zsh"


ZSH_DISABLE_COMPFIX=true

plugins=(git zsh-syntax-highlighting zsh-autocompletion)

source $ZSH/oh-my-zsh.sh

PS1='%{$fg_bold[yellow]%}%c%{$reset_color%} $(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}git(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[magenta]%})"
RPS1='%{$fg[magenta]%}%T%{$reset_color%}'

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/slavko/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/slavko/.android/avd
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

autoload -U promptinit; promptinit
prompt pure

alias tm="tmux attach"

function killport () {
	id=$(lsof -t -i :$1)
	kill -9 $id
	echo "Killed" $id
}

function va() {
	source .env/bin/activate
}

function vd() {
	deactivate
}

function tk() {
	tmux kill-session -t $1
	echo "Killed tmux session $1"
}

function pippy() {
	for module in "$@"; do
		pip install $module
	done
}

alias icloud="cd /Users/slavko/Library/Mobile\ Documents/com~apple~CloudDocs/"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
