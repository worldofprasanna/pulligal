export ZSH=~/.oh-my-zsh
ZSH_THEME=robbyrussell


ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
docker
git
rails
bundler
)

export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

# Make vi default editor, vi related settings
# http://unix.stackexchange.com/questions/44115/how-do-i-perform-a-reverse-history-search-in-zshs-vi-mode/273672#273672?newreg=26e81cf912814bd590410b408c30851a
set -o vi

bindkey "^R" history-incremental-search-backward

# To distinguish between insert mode and normal mode in zsh vi
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

 zle -N zle-line-init
 zle -N zle-keymap-select
# Increase the switching time between insert and normal mode in vim

 autoload edit-command-line
 zle -N edit-command-line
 bindkey -M vicmd v edit-command-line

 export KEYTIMEOUT=1

 export LC_ALL=en_US.UTF-8
 export LANG=en_US.UTF-8
 export EDITOR=vi

export FZF_DEFAULT_OPTS="--preview 'cat {}'"

# Enable key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Generate GitIgnore
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# NVM to work properly
export NVM_DIR="$HOME/.nvm"
 [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
 [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source $HOME/.rvm/scripts/rvm

# Because signing of commits is failing
# https://github.com/keybase/keybase-issues/issues/2798

export GPG_TTY=$(tty)

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
#
# The next line updates PATH for the Google Cloud SDK.
# Because signing of commits is failing
if [ -f '/Users/prasanna/Documents/Setup/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/prasanna/Documents/Setup/google-cloud-sdk/path.zsh.inc'; fi

# https://github.com/keybase/keybase-issues/issues/2798
# The next line enables shell command completion for gcloud.
export GPG_TTY=$(tty)
if [ -f '/Users/prasanna/Documents/Setup/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/prasanna/Documents/Setup/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v13.0.1)
export GOPATH="/Users/prasanna/Documents/Code/golang"

export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Docker Engine autocompletion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
