export PATH=~/.local/bin:/usr/local/sbin:$PATH

# PS1='\[\033[1;32m\][\t \u@\h \[\033[31m\]\W\[\033[34m\]\[\033[1;32m\] ] \[\033[31m\]\$\[\033[m\] '
# Depracted for zsh

# alias ls='ls -Gv'
# alias ll='ls -lh'

# nvim
# alias vim="nvim"
# alias vi="nvim"

#screen
alias sls="screen -ls"
alias sr="screen -x"
# alias ss='screen -t $1 -S $1'

#########history############
# https://unix.stackexchange.com/questions/18212/bash-history-ignoredups-and-erasedups-setting-conflict-with-common-history/18443#18443
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="[%F %T]"
# export HISTCONTROL=erasedups:ignoredups
export HISTCONTROL=ignoredups
shopt -s histappend #append to history, don't overwrite
export HISTFILE=~/.bash_eternal_history
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

#mosh
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export MM_CHARSET='UTF-8'

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib

export EXT_PATH=~/.bashrc_extensions
for filename in "$EXT_PATH"/*; do
    # shellcheck source=/dev/null
    . "$filename"
    echo "loaded $filename"
done

