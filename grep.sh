#! /usr/bin/env -S bash -ex

alias rg="rg -pS -j4"
alias rg-showall="rg --no-ignore"
alias rg-case="rg -s"
alias rg-onlypaths="/usr/local/bin/rg -lS -j4 --color=never"
alias ripgrep="rg"

alias grep="grep \${COLOR_SWITCH}"
alias fgrep="fgrep \${COLOR_SWITCH}"
alias fgp="fgrep"
alias egrep="grep -E"
alias egp="egrep"
alias igrep="grep -i"
alias igp="igrep"
alias zgrep="zgrep \${COLOR_SWITCH}"
alias zgp="egrep"

alias girl="grep -irl"
alias grep-hl-ack="ack -i --passthru"
alias grep-hl-grep="/usr/bin/grep -i --color -E"
alias grep-hl="grep-hl-ack"
