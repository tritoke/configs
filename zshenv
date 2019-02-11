# vim:foldmethod=marker

# PATH changes {{{

PATH="$HOME/riscv/gcc-riscv/install/bin:$PATH"
PATH="$HOME/riscv/gcc-riscv/install64/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH" 
export PATH="$HOME/.poetry/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export PYTHONPATH=$HOME/networkScanner/Code/modules:$PYTHONPATH
export MYPYPATH=$PYTHONPATH:$MYPYPATH
if command -v pyenv 1>/dev/null 2>&1
then
  eval "$(pyenv init -)" # Initialise pyenv
  eval "$(pyenv virtualenv-init -)" # initialise virtualenvs
fi

# }}}

# global variables {{{

export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"
export EDITOR='nvim'
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# }}}
