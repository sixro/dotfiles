# Setup ls command...
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ls='ls --color=always'

# Register Github SSH key...
eval $(ssh-agent -s)
ssh-add $HOME/.ssh/id_rsa_github

# Enable auto-completion...
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
