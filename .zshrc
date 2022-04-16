DEFAULT_USER=`whoami`

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

zstyle ':omz:update' mode auto

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_menu 2> /dev/null || true

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
