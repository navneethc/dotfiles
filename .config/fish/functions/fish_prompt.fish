function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    set_color bryellow
    printf '%s' $USER
    set_color normal
#    printf '@'
# 
#   set_color bryellow
#   echo -n (prompt_hostname)
#   set_color normal
    printf ':'

    set_color brgreen
    printf '%s' (prompt_pwd)
    set_color yellow
    printf '%s' (fish_git_prompt)
    set_color normal

    # Line 2
    echo
    if test -n "$VIRTUAL_ENV"
        printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    end
    printf '%s ' '➜'
    set_color normal
end
