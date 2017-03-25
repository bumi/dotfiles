PATH=".bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"

eval "$(nodenv init -)"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi


export PATH

