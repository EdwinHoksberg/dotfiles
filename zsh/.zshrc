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
PATH=/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/lib/go-1.8/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/Code/Go/bin:$PATH
PATH=$HOME/.phpbrew/bin:$PATH
PATH=$HOME/.config/composer/vendor/bin:$PATH

export PATH

export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export GNUPGHOME=$HOME/.gnupg

export GOPATH=$HOME/Code/Go
export JAVA_HOME=/usr/lib/jvm/default-java
export JRE_HOME=/usr/lib/jvm/default-java/jre

# Aliasses
alias rm="rm -I"
alias gpg="gpg2"

# Themes, Plugins and Shell autocompletion
for f in $ZSH_CUSTOM/source/*; do source $f; done
for f in $ZSH_CUSTOM/exec/*; do $f; done

plugins=(gitfast, history-substring-search, docker, composer, zsh-autosuggestions)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
