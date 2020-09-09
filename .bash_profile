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

# kitty auto complete
source <(kitty + complete setup bash)
