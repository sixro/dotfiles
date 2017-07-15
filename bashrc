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

# Env vars are not stored remotely
# Usually I need:
#    JAVA_HOME
#    DEV_HOME
#    PROJECT_HOME
. .envs


# ==  Aliases  =========================================================

alias ls='ls --color=always'
alias ll='ls -l'
alias la='ls -la'

# pushd/popd as subs cd command...
alias cdn='pushd'
alias cdp='popd'

# cd known dirs
alias cdev='cdn ${DEV_HOME}'
alias cpr='cdn ${PROJECT_HOME}'

# Handle dotfiles
dotfsupdate() {
		pushd ${HOME}/dotfiles;
		git add .;
		git commit -m "$1";
		git push origin master;
		popd;
}
alias dotu='dotfsupdate'
alias dots='pushd $HOME/dotfiles; git status; git diff; popd'
