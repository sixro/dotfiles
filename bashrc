# Setup ls command...
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ls='ls --color=always'

# Register Github SSH key...
eval $(ssh-agent -s)
ssh-add $HOME/.ssh/id_rsa_github
