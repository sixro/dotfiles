# History configuration
export HISTCONTROL=ignoreboth:erasedups

# Register Github SSH key...
# TODO plan to make a cycle on all id_rsa found in .ssh dir...
if [ -f "$HOME/.ssh/id_rsa_github" ]; then
		eval $(ssh-agent -s)
		ssh-add $HOME/.ssh/id_rsa_github
fi

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
if [ -f "$HOME/.envs" ]; then
	. $HOME/.envs
fi

# Add a bin directory if exists
if [ -d "$HOME/bin" ]; then
	export PATH="${PATH}:${HOME}/bin"
fi


# ==  Aliases  =========================================================

ostype=`uname -s`
if [ $ostype = 'Darwin' ]; then
	alias ls='ls -G'
else
	alias ls='ls --color=always'
fi
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
alias vimrc='vi $HOME/dotfiles/vimrc'
