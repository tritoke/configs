# vim:foldmethod=marker

#  Exports, Aliases and More. {{{

export PATH="$HOME/riscv/gcc-riscv/install/bin:$PATH"
export PATH="$HOME/riscv/gcc-riscv/install64/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export MYPYPATH="$HOME/networkScanner/Code/modules/"
export ZSH="$HOME/.oh-my-zsh"
export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"
export EDITOR='nvim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH" 

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias l='ls'
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -Al'
alias grep="grep --color=auto"
alias ccat="highlight --out-format=ansi"
alias pdf="zathura"
alias vim="nvim"
alias find="find 2>/dev/null"
alias firefox="/home/tritoke/Downloads/firefox/firefox &"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)" # Initialise pyenv
  eval "$(pyenv virtualenv-init -)" # initialise virtualenvs
fi

# }}}

# zplug {{{

source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/wakatime",   from:oh-my-zsh
zplug "owenstranathan/pipenv.zsh"
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
      echo; zplug install
  fi
fi

zplug load

# }}}

# spaceship prompt options {{{

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# }}}

# zsh options {{{ 

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
watch=(notme)
LOGCHECK=60
REPORTTIME=5
WORDCHARS='`~!@#$%^&*()-_=+[{]}\|;:",<.>/?'"'"

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Dont overwrite history
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # remove duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.
setopt pushd_ignore_dups        # Dont push copies of the same dir on stack.
setopt pushd_minus              # Reference stack entries with "-".
setopt extended_glob

# }}}

