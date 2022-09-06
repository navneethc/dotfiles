if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set fish_greeting

# Bat config
if type -q bat
    alias cat="bat -n"
end

# Start tmux
#tmux

# pyenv config
#pyenv init - | source
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# aliases for git
alias ga="git add"
alias gc="git commit -m"
alias gco="git checkout"
alias gl="git log"
alias gl1="git log --oneline"
alias gpl="git pull"
alias gps="git push"
alias gst="git status"

# custom key bindings
bind -M insert \cf accept-autosuggestion # in vi mode, rebind Ctrl+F to autocomplete suggestion 

# GOPATH variables
set -x GOPATH ~/go
set -x PATH "$PATH:$GOPATH/bin"
