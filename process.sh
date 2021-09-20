#! /usr/bin/env -S bash -ex

alias f="fg"
alias b="bg"
alias pkill="pkill -i"

function pause {
    if killall -STOP "$1"; then
        echo "[+] $1 successfully paused!"
    else
        echo "[-] $1 Failed to pause $1"
    fi
}

function cont {
    if killall -CONT "$1"; then
        echo "[+] $1 successfully continued!"
    else
        echo "[-] $1 Failed to continue $1"
    fi
}

alias pgrep="pgrep -il"
alias pxl="ps aux"
alias px="pxl | grep -v 'grep \${COLOR_SWITCH}' | grep"
alias htop-mem="htop --delay=20 --sort-key=PERCENT_MEM"
alias watch="watch -c"
alias watcha="watch -x \"\${SHELL}\" -ic"
alias which-all="which -a"
