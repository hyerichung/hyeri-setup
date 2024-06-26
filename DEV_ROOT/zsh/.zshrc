# ZSH History
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=50000

# How many commands history will save on file.
export SAVEHIST=50000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

# Zsh Plugins
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $ZSH/plugins/you-should-use/you-should-use.plugin.zsh # TODO

# Zsh themes
source $ZSH/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZSH/.p10k.zsh ]] || source $ZSH/.p10k.zsh



