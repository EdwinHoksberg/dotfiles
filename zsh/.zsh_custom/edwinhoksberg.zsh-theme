# Modified default 'tjkirch' theme

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
    if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

function get_hostname {
    if [ "$SSH_CONNECTION" != "" ]; then
        echo -ne "%m["$(echo $SSH_CONNECTION | cut -d' ' -f1)" -> "$(echo $SSH_CONNECTION | cut -d' ' -f3)"]"
    else
        echo "%m" 
    fi
}

PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
)
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}$(get_hostname)%{$reset_color%}: %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)
%_$(prompt_char) '

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
