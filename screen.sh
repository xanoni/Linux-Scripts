#! /usr/bin/env bash

alias scc="screen -S"                          # create
alias sc="screen -d -r"                        # re-attach
alias sca="sc"                                 # "
alias scl="screen -ls | \
           egrep '\w+.+[0-9]+\.[a-zA-Z]+.+'"   # list
alias scd="screen -x detach"                   # detach

function sct {                                 # create from template
    local rc_path_prf="$HOME/.screenrcs/screenrc-${1}"
    local rc_path_old="$HOME/.screenrc-${1}"

    if [ -z "${1}" ]; then
        echo -e "Provide 'screen' session name! Exiting." && return 1
    elif [ -f "${rc_path_prf}" ] && [ -f "${rc_path_old}" ]; then
        echo -en "\nFile exists in multiple locations!\n\n" && return 1
    elif ! { [ -f "${rc_path_prf}" ] || [ -f "${rc_path_old}" ]; }; then
        echo -en "\nFile doesn't exists!\n\n" && return 1
    elif { ! [ -f "${rc_path_prf}" ]; } && [ -f "${rc_path_old}" ]; then
        mkdir -vp "$HOME/.screenrcs" && mv "${rc_path_old}" "${rc_path_prf}"
    fi
    screen -c "${rc_path_prf}"
}
