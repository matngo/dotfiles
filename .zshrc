# Path to your oh-my-zsh installation.
export ZSH=/home/mathias/.oh-my-zsh
export TERM="xterm-256color"

ZSH_THEME="spaceship"
plugins=(git zsh-256color zsh-syntax-highlighting zsh-autosuggestions z pip)

source $ZSH/oh-my-zsh.sh

export DEFAULT_USER='mathias'
export EDITOR='vim'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
export ZSH_AUTOSUGGEST_STRATEGY="match_prev_cmd"

export WORKON_HOME=$HOME/.envs

alias me="su mathias"
alias lenny="echo '( ͡° ͜ʖ ͡° )'"
alias nb="jupyter notebook"
alias chrome="chromium-browser"
alias python="python3.7"
alias pip="pip3.7"
alias tree="tree -C | less -r"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  venv          # virtualenv section
  exec_time     # Execution time
  time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_DIR_SUFFIX="/ "
SPACESHIP_DIR_TRUNC=0
SPACESHIP_TIME_SHOW=true

# added by travis gem
[ -f /home/mathias/.travis/travis.sh ] && source /home/mathias/.travis/travis.sh
