# ZSH configuration
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh_custom

export UPDATE_ZSH_DAYS=14
export LANG=en_US.UTF-8

ZSH_CUSTOM=$ZSH_CUSTOM
ZSH_THEME="edwinhoksberg"
DEFAULT_USER="edwin"
HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=/sbin:/usr/sbin:/usr/local/bin:/usr/lib/go-1.8/bin:$HOME/bin:$HOME/Code/Go/bin:$HOME/.phpbrew/bin:$PATH
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export GNUPGHOME=$HOME/.gnupg

export GOPATH=$HOME/Code/Go
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export JRE_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre

# Aliasses
alias rm="rm -I"
alias gpg="gpg2"

# Themes, Plugins and Shell autocompletion
for f in $ZSH_CUSTOM/*; do source $f; done

plugins=(gitfast, history-substring-search, docker, composer, zsh-autosuggestions)
