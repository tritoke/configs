source ~/.profile
shopt -s checkwinsize 				# update the window size when necessary
shopt -s histappend 				# append to the history file
shopt -s autocd 					# cd without using cd

HISTCONTROL=ignoreboth 				# don't put duplicate lines or lines starting with space in the history.
HISTSIZE= HISTFILESIZE= 			# infite history

PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

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
alias volume="pactl set-sink-volume 0"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
