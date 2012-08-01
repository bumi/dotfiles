alias ...='cd ../..'
alias la='gls -la --color'
alias l='gls -laih --color'
alias ll='gls -l --color'
alias ls='gls -F --color'

alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'

alias md='mkdir -p'

alias code='cd ~/code&&echo "\n-----> $fg_bold[cyan]HAPPY CODING $reset_color \n"'

alias pubkey="more ~/.ssh/id_dsa.public | pbcopy | echo '=> Public key copied to pasteboard.'"
