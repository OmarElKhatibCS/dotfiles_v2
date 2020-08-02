git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[31m\]\$(git_branch)\[\e[m\]"
export PS1+="\[\e[32m\]in\[\e[m\] \[\e[36m\]\w\[\e[m\]\n\[\e[35m\]>\[\e[m\] \[$(tput sgr0)\]"

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/omar/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/omar/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/omar/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/omar/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

set -o vi
if [ -d "$HOME/bin"  ] ; then
      PATH="$PATH:$HOME/bin"
fi

export GOROOT=/usr/local/go
export GOPATH=$HOME/Documents/GoProjects/
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig:/usr/share/pkgconfig:/usr/local/lib/pkgconfig

# add local to path
export PATH=$HOME/.local/bin:$HOME/.local/share/applications:$PATH

[[ -s "/etc/profile.d/grc.bashrc" ]] && source /etc/profile.d/grc.bashrc
export LESSOPEN="| /usr/bin/highlight %s --out-format xterm256 --force"
# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.config/less/termcap ]] && . ~/.config/less/termcap
alias dots='git --git-dir=/home/omar/.dots.git/ --work-tree=/home/omar'
