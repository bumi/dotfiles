alias ...='cd ../..'

# osx GNU Fileutils
if which gls > /dev/null 2>&1; then
  alias la='gls -la --color'
  alias l='gls -laih --color'
  alias ll='gls -l --color'
  alias ls='gls -F --color'
fi

alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'

alias md='mkdir -p'

alias code='cd ~/code&&echo "\n-----> $fg_bold[cyan]HAPPY CODING $reset_color \n"'

alias pubkey="more ~/.ssh/id_dsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias regtest="bitcoind -conf=$HOME/.bitcoin/bitcoin-regtest.conf"
