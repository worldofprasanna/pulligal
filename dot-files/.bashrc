source ~/.bash_profile
source ~/.functions


#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
#
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

export CDPATH=.:~:/Users/prasanna/Documents/Official/Code/bcg

complete -C /usr/local/bin/vault vault

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
