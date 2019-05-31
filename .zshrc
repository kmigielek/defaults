export ZSH="/home/kmigielek/.oh-my-zsh"
export GOPATH="/home/kmigielek/projekty/go"
export GOBIN="/home/kmigielek/projekty/go/bin"

ZSH_THEME="mytheme"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias u='sudo apt update -y && sudo apt upgrade -y'
alias e='exit'
alias s='shutdown now'
