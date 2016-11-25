function fish_prompt -d "Write out the prompt"
    set -l home_escaped (echo -n $HOME | sed 's/\//\\\\\//g')
    set -l pwd (echo -n $PWD | sed "s/^$home_escaped/~/" | sed 's/ /%20/g')

    set -l prompt_symbol ''
    switch $USER
        case root toor; set prompt_symbol '#' 
        case '*';  set prompt_symbol '$' 
    end

    # Git branch
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    if test (string match '(detached from *)' $git_branch)
        set git_branch (string sub --length 8 (cat .git/HEAD))
    end

    set -l git_dirty ''
    #if test (git status 2> /dev/null ^&1 | tail -n1) != 'nothing to commit (working directory clean)'
    #    set git_dirty '⚡'
    #end

    #set -l failure ''
    #if test $status -ne 0
    #    set failure (printf "\nFAIL: %s\" $status)
    #end
    
    printf "\n%s%s%s@%s%s: %s%s %s%s %s%s\n%s%s " (set_color magenta) $USER (set_color grey) (set_color yellow) (hostname -s) (set_color blue) $pwd (set_color green) $git_branch (set_color red) $git_dirty (set_color normal) $prompt_symbol
end
