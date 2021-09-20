#! /usr/bin/env -S bash -ex

## easier find
function fnd {
    find . -iname "${*}"
}

## easier navigation
alias c="cd .."
alias d="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## bash
if [ "${SHELL}" = "/bin/bash" ]; then
    ## /bin/cd
    function cd {
        if [ -n "$PS1" ]; then
            builtin cd "$@" && ll
        else
            builtin cd "$@"
        fi
    }

## zsh
elif [ "${SHELL}" = "/bin/zsh" ]; then
    alias zsh-omz="omz"
    alias zshrc="vim ~/.zshrc"
    alias zshrc-my="vim \$HOME/.oh-my-zsh/custom/my.zsh"
fi
