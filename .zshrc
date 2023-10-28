# Functions
export function pathl() {
  # show $PATH list more concisely
  echo $PATH | tr ':' '\n' | sort | uniq -c
}

# ENV
export DEV_ROOT=$HOME/DEV_ROOT
export DEV_SDK=$DEV_ROOT/sdk
export PLAY=$DEV_ROOT/play
export WORK=$DEV_ROOT/work
export ZSH=$DEV_SDK/zsh

# PATH
# RN >= 0.68
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk  
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator  
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# RN < 0.68
export ANDROID_HOME=$HOME/Library/Android/sdk  
export PATH=$PATH:$ANDROID_HOME/emulator  
export PATH=$PATH:$ANDROID_HOME/tools  
export PATH=$PATH:$ANDROID_HOME/tools/bin  
export PATH=$PATH:$ANDROID_HOME/platform-tools

# ALIAS
alias zshc="vi $DEV_ROOT/.zshrc" # zsh config
alias zsht="vi $ZSH/.zshrc" # zsh theme
alias lfc="vi $HOME/.config/lf/lfrc" # lf config
alias vimc="vi $HOME/.vimrc" # vim config
alias play="cd $PLAY" # personal workplace
alias work="cd $WORK" # work related workplace
alias gcl="git config -l" # git config list
alias brl="brew deps --tree \$(brew leaves)" # brew list
alias npmgl="npm list -g --depth 0" # npm global installed list

# remove duplicated $PATH
typeset -U PATH

# BREW CONFIG
eval "$(/usr/local/bin/brew shellenv)"

# RUBY CONFIG
eval "$(rbenv init - zsh)"

# JAVA JDK
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
# Version change e.g.
# export JAVA_HOME_13=$(/usr/libexec/java_home -v13) 

export JAVA_HOME=$JAVA_HOME_11
# Version change e.g.
# export JAVA_HOME=$JAVA_HOME_13

# FZF CONFIG
# bind fzf alt key
bindkey "ç" fzf-cd-widget

# fzf command
export FZF_COMPLETION_TRIGGER='**'
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'

# CTRL-C's command
export FZF_CTRL_T_C::qOMMAND="$FZF_DEFAULT_COMMAND"

# ALT-C's command
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

# fzf layout
export FZF_DEFAULT_OPTS="--height=40% --multi --layout=reverse --info=inline --border --ma
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # apply fzf.zsh

# ZSH CONFIG
source $ZSH/.zshrc # themes & plugs

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_
