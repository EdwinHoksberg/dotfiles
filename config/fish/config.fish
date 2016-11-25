# Terminal configuration
set -x LANG en_US.UTF-8
set -x TERM xterm-256color

# User configuration
set -x DEFAULT_USER "edwin"
set -x PATH /sbin /usr/sbin /usr/local/bin $HOME/bin $HOME/Code/Go/bin $HOME/.phpbrew/bin /usr/lib/go-1.7/bin $PATH
set -x EDITOR 'vim'
set -x GOPATH $HOME/Code/Go
set -x GNUPGHOME $HOME/.gnupg
set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
set -x JRE_HOME $JAVA_HOME/jre/bin/

# Autocomplete
source $HOME/.config/fish/pass-completion
source $HOME/.phpbrew/phpbrew.fish

# Plugins
set fish_command_timer_time_format '%H:%M:%S'
set fish_command_timer_color green
set fish_command_timer_millis '1'
source $HOME/.config/fish/functions/fish_command_timer.fish

# Aliasses
function rm
    /bin/rm -I $argv
end

function gpg
    gpg2 $argv
end
