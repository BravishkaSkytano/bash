# .bash_aliases

# --------------------------------------------------
# DIRECTORIES
# --------------------------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='eza -al'
alias tree='tree --dirsfirst -shC -I "node_modules|resources"'

# --------------------------------------------------
# GIT
# --------------------------------------------------

alias gf="git fetch"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"

# --------------------------------------------------
# HUGO
# --------------------------------------------------

alias hs='hugo server'
alias hst='hugo server -s exampleSite --themesDir=../.. --disableFastRender'

# --------------------------------------------------
# MISC
# --------------------------------------------------

alias c='clear'
