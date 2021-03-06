# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/good/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Pure
autoload -U promptinit; promptinit
prompt pure
