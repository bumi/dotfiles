PATH=".bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"

export GOPATH=$HOME/src/go
PATH=$PATH:$GOPATH/bin

PATH=$PATH:./node_modules/.bin:$HOME/.node_modules/bin
PATH=$PATH:$HOME/.nodenv/bin

PATH=$PATH:$HOME/.cargo/bin

# install node modules locally
export npm_config_prefix=$HOME/.node_modules

eval "$(nodenv init -)"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PATH

