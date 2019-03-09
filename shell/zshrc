# vim:foldmethod=marker

#  sourcing {{{

# ZSH_THEME="lambda"
source $ZSH/oh-my-zsh.sh
source ~/.aliases

# }}}

# zplug {{{

source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/wakatime",   from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "anonguy/yapipenv.zsh"
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

if ! zplug check --verbose
  then
  printf "Install? [y/N]: "
  if read -q
    then
    echo; zplug install
  fi
fi

zplug load

# }}}

# spaceship options {{{

SPACESHIP_PYENV_PREFIX="pyenv:("
SPACESHIP_PYENV_SUFFIX=") "

SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# }}}

# zsh options {{{ 

DISABLE_UNTRACKED_FILES_DIRTY="true"
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

