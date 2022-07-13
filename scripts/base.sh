#!/usr/bin/env bash
set -euo pipefail

export TERM=xterm-256color

is_arg() {
    type "$1" &>/dev/null
}

function red_stderr() {
    local COLOR_RED
    local COLOR_RESET

    COLOR_RED="$(tput setaf 1)"
    COLOR_RESET="$(tput sgr0)"

    exec 9>&2
    exec 8> >(perl -e '$|=1; while(sysread STDIN,$a,9999) {print "$ENV{COLOR_RED}$a$ENV{COLOR_RESET}"}')
    function undirect() { exec 2>&9; }
    function redirect() { exec 2>&8; }
    trap "redirect;" DEBUG
    PROMPT_COMMAND='undirect;'
}

red_stderr
