source $(brew --prefix nvm)/nvm.sh
eval source <(/usr/local/bin/starship init zsh --print-full-init)

if [[ $(command -v exa) ]]; then
  alias e='exa --icons'
  alias l=e
  alias ls=e
  alias ea='exa -a --icons'
  alias la=ea
  alias ee='exa -aal --icons'
  alias ll=ee
  alias et1='exa -T -L 1 -a -I "node_modules|.git|.cache" --icons'
  alias et2='exa -T -L 2 -a -I "node_modules|.git|.cache" --icons'
  alias et3='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias lt=et1
  alias lt1=et1
  alias lt2=et2
  alias lt3=et3
  alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
  alias lta=eta
fi
