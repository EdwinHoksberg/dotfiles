# ZSH configuration
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh_custom
export UPDATE_ZSH_DAYS=28
export LANG=en_US.UTF-8

ZSH_CUSTOM=$ZSH_CUSTOM
ZSH_THEME="edwinhoksberg"
DEFAULT_USER="edwin"
HIST_STAMPS="yyyy-mm-dd"

plugins=(gitfast, history-substring-search, docker, composer)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$HOME/bin:/usr/local/bin:/usr/local/go/bin:$HOME/STACK/Code/Go/bin:$HOME/.phpbrew/bin:$PATH
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export GOPATH=$HOME/STACK/Code/Go
export GNUPGHOME=$HOME/.gnupg

# Aliasses
alias rm="rm -I"
alias gpg="gpg2"

# Shell autocompletion
source $HOME/.phpbrew/bashrc
source $HOME/.phpbrew/_phpbrew

source $ZSH_CUSTOM/functions
