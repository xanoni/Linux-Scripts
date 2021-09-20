#! /usr/bin/env bash

if [[ "${OSTYPE}" = linux* ]]; then
    function pbcopy { it2copy "${@}"; }
    function pbpaste { "echo 'Command not implemented, oh no!'"; }
fi

alias PC="tr -d '\n' | pbcopy"
alias PP="pbpaste"

function rg-pbc {
    rg-onlypaths "${@}" | xargs | pbcopy
}


function pbc {
    if [ -f "${1}" ]; then
        echo "Copying from file ..."
        cat "${@}" | pbcopy
    else
        pbcopy "${@}"
    fi
}

function rpcp {
    if [ -e "${1}" ]; then
        set +x
        realpath "${@}" | pbcopy
        set -x
    else
        set +x
        realpath . | pbcopy
        set -x
    fi
}
