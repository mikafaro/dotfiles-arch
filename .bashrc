########################
### MIKAFARO .BASHRC ###
########################


if [ -f ~/.config/shell/aliases ]; then
  source ~/.config/shell/aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


eval "$(starship init bash)"
