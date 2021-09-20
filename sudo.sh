#! /usr/bin/env -S bash -ex

if [ $UID -eq 0 ]; then
    unalias sudo 2> /dev/null || true
else
    alias sudo='sudo ' # enable aliases to be sudo’ed
fi

# shellcheck disable=2034
export SUDO='/usr/bin/sudo'

function sudoers-encode-cmd {
    openssl dgst -binary -sha224 "${*}" | openssl base64 | tr -d '\n'
}
