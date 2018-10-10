# Path to your oh-my-zsh installation.
source $HOME/libs/antigen/antigen.zsh

export TERM="xterm-256color"

ZSH_THEME="spaceship"

# Plugins
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
antigen bundle tylerreckart/hyperzsh

antigen apply

export DEFAULT_USER='mathias'
export EDITOR='vim'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
export ZSH_AUTOSUGGEST_STRATEGY="match_prev_cmd"

alias me="su mathias"
alias lenny="echo '( ͡° ͜ʖ ͡° )'"
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
