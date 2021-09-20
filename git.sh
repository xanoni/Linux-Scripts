#! /usr/bin/env bash

alias g="git"
alias gss="git status"
alias gg="gss"
alias gs="echo -en \"\nThat's GhostScript :-(\n\""
alias gsw="git switch"
alias gsh="git stash"
alias gst="gsh"
alias gco="git checkout"
alias gc="git commit"
alias gcm="gc . -m"
alias gca="gc --amend"
alias ga="git add"
alias gr="echo 'grb = git rebase, grs = git restore, gre = git remote'"
alias grs="git restore"
alias grb="git rebase"
alias gre="git remote"
alias grbc="grb --continue"
alias grba="grb --abort"
alias gri="grb --interactive"

function git-author-update {
    local git_author="${1}"
    if [[ "${git_author}" == '' ]]; then
        git_author="$(git_current_user_name) <$(git_current_user_email)>"
    fi
    echo -en "\nChanging author to: ${git_author}\n\n"
    git commit --amend --author="${git_author}" --no-edit
    git rebase --continue
}

alias gd="git diff \${COLOR_SWITCH}"
alias gd-short="gd --name-status"
alias gl="git log \${COLOR_SWITCH}"
alias grl="git reflog \${COLOR_SWITCH}"
alias gb="git branch"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gpl="git pull"
alias gph="git push"
alias gphf="git push --force"
alias git-prune-origin="git remote prune origin && git fetch origin --prune"
alias git-prune-local="git push --all --prune --dry-run && echo 'ok?' && \
                       read && git push --all --prune"
alias gprune-origin="git-prune-origin"
alias gprune-local="git-prune-local"
