#! /usr/bin/env bash

function fan  {
    local action="${1}"
    if [ -z "${action}" ]; then
        echo "on | off | toggle" && return 1
    fi
    uhubctl -p3 -a "${1}"
}
