# ZSH configuration
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh_custom

export UPDATE_ZSH_DAYS=14
export LANG=en_US.UTF-8

ZSH_CUSTOM=$ZSH_CUSTOM
ZSH_THEME="edwinhoksberg"
DEFAULT_USER="edwin"
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOQUIT=false

# User configuration
PATH=/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/lib/go-1.8/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/Code/Go/bin:$PATH
PATH=$HOME/.config/composer/vendor/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH

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
alias phpx="php -dxdebug.remote_autostart -dxdebug.remote_enable=1 -dxdebug.remote_port=9000 -dxdebug.remote_host=127.0.0.1"

plugins=(git, docker, tmux, zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Themes, Plugins and Shell autocompletion
for f in $ZSH_CUSTOM/source/*; do source $f; done
for f in $ZSH_CUSTOM/exec/*; do $f; done

export PATH="$HOME/.yarn/bin:$PATH"
