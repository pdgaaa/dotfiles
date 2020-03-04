shopt -s histappend
shopt -s cdspell
shopt -s autocd

export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
export PROMPT_COMMAND="history -a"
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="[%F %T] "

###export PS1='[\t] \[\033[00;33m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\n\$ '
###export PS1='\[\e]0;\w\a\]\n[\t] \[\033[00;33m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\n\$ '
###export PS1='\[\e]0;\w\a\]\n\[\033[00;33m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\n\$ '

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#
# Default to human readable figures
alias df='df -h'
alias du='du -h'
#
# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias ltr='ls -ltr'
alias vim='vi'
#
# Other
alias sudo='sudo ' # make sudu and aliases compatible
alias less=/usr/share/vim/vim*/macros/less.sh

cl() { cd $1 && la ; }
mc() { mkdir $1 && cd $1 ; }

function settitle() {
      export PS1='\[\e]0;\w\a\]\n\[\033[00;33m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\n\$ '
      echo -ne "\e]0;$1\a"
}
settitle
