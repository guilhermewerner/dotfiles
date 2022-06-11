export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

DISABLE_UNTRACKED_FILES_DIRTY="true"

SPACESHIP_PROMPT_ORDER=(
    user
    dir
    host
    git
    exec_time
    line_sep
    jobs
    exit_code
    char
)

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false

DISABLE_AUTO_TITLE="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    asdf
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
