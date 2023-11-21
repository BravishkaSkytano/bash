# .bash_aliases

alias c='clear'

# --------------------------------------------------
# DIRECTORIES
# --------------------------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
#alias ls='eza -aFH --icons --group-directories-first --git -1'
alias ls='exa -a --color=always --group-directories-first --icons' # preferred listing
alias ll='exa -al --color=always --group-directories-first --icons' # long format
alias lt='exa -aT --color=always --group-directories-first --icons --ignore-glob=".git|node_modules|dotbot"' # tree listing
alias l.='exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles
alias lg='exa -al --color=always --group-directories-first --icons --git' # show git status

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
# FILES
# --------------------------------------------------

[ -x /usr/bin/bat ] && alias cat='bat --style header --style snip --style changes --style header'

# --------------------------------------------------
# HUGO
# --------------------------------------------------

alias hs='hugo server'
alias hst='hugo server -s exampleSite --themesDir=../.. --disableFastRender'
