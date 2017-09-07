alias ...='cd ../..'

# osx GNU Fileutils
if which gls > /dev/null 2>&1; then
  alias la='gls -la --color'
  alias l='gls -laih --color'
  alias ll='gls -l --color'
  alias ls='gls -F --color'
else
  alias la='ls -la --color'
  alias l='ls -laih --color'
  alias ll='ls -l --color'
  alias ls='ls -F --color'
fi

if ! which open > /dev/null 2>&1; then
  alias open='xdg-open'
fi

alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'

alias md='mkdir -p'

alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

alias code='cd ~/src&&echo "\n-----> $fg_bold[cyan]HAPPY CODING $reset_color \n"'

alias regtest="bitcoind -conf=$HOME/.bitcoin/bitcoin-regtest.conf"

if [ "$(uname)" = "Linux" ]; then  
  alias git-credential-helper='/usr/lib/git-core/git-credential-gnome-keyring'
else
  alias git-credential-helper='osxkeychain'
fi
