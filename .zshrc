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


autoload -U promptinit; promptinit
prompt pure

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
