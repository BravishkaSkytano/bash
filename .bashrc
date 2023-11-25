# .bashrc

# Inspiration from all over the internet
# Special mention: Jake@Linux
# He does a lot of stuff with Bash and I love it <3

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# --------------------------------------------------
# IMPORTS
# --------------------------------------------------

. ~/.bash_aliases
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

# --------------------------------------------------
# EXPORTS
# --------------------------------------------------

export BROWSER="firefox"
export EDITOR="vim"
export VISUAL="vim"
export MYVIMRC="$HOME/.config/vim/.vimrc"
export VIMINIT="source $MYVIMRC"
#export PATH="$PATH:$HOME/.local/scripts/:$HOME/.local/bin/:$HOME/.local/scripts/dmenu/:$HOME/.cargo/bin"
#export CDPATH=".:$HOME:$HOME/.config/:$HOME/.local/:$HOME/.local/share/:$HOME/.local/programs"
export CSCOPE_EDITOR="vim"

# --------------------------------------------------
# SHELL OPTIONS
# --------------------------------------------------

# Load starship prompt if starship is installed
[ -x /usr/bin/starship ] || [ -x ~/.nix-profile/bin/starship ] && eval "$(starship init bash)"
#[ -x /usr/bin/neofetch ] && neofetch

# --------------------------------------------------
# FUNCTIONS
# --------------------------------------------------

# git backup
gb () {
    git add .
    git commit -m "$(uname -o) $(git diff --cached --numstat | wc -l) files ($(date +%R))"
    git push
}

# archive extract
ex ()
{
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1   ;;
        *.tar.gz)    tar xzf $1   ;;
        *.bz2)       bunzip2 $1   ;;
        *.rar)       unrar x $1   ;;
        *.gz)        gunzip $1    ;;
        *.tar)       tar xf $1    ;;
        *.tbz2)      tar xjf $1   ;;
        *.tgz)       tar xzf $1   ;;
        *.zip)       unzip $1     ;;
        *.Z)         uncompress $1;;
        *.7z)        7za e x $1   ;;
        *.deb)       ar x $1      ;;
        *.tar.xz)    tar xf $1    ;;
        *.tar.zst)   unzstd $1    ;;
        *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
