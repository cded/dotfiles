### ZSH HOME
export ZSH=$HOME/.dotfiles/zsh

### ---- history config -------------------------------------
export HISTFILE=$HOME/.dotfiles/zsh/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS



### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
source $ZSH/plugins/fast-syntax-highlighting/F-Sy-H.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-you-should-use/you-should-use.plugin.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

### --- Spaceship Config ------------------------------------

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "


### --- Aliases ------------------------------------

# ls
alias l='ls -1'
alias la='ls -al'
alias lf='ls -lF'
alias ll='ls -l'
alias lt='ls -altr'

alias gst="git status"
alias gc="git checkout "
alias gpull="git pull"
alias gpush="git push"
alias yd="yarn dev || yarn start "
alias yt="yarn test"
alias yb="yarn build"
alias ys="yarn start"
alias python="python3"
alias pip="pip3"
alias nv="nvim"
alias vi="nvim"
alias v="nvim"
alias tr2="tree -a -L 2"
alias cls="clear"
alias tm="tmux "
alias td="tmux detach "
alias ta="tmux attach -t "
alias tls="tmux ls"
alias l="ls -l"
alias la="ls -la"
alias py="python3 "
alias kssh="kitten ssh"


### --- Libraries for dev ------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source "$HOME/.sdkman/bin/sdkman-init.sh"

