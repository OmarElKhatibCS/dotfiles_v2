git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[31m\]\$(git_branch)\[\e[m\]"
export PS1+="\[\e[32m\]in\[\e[m\] \[\e[36m\]\w\[\e[m\]\n\[\e[35m\]>\[\e[m\] \[$(tput sgr0)\]"

if [ -f $HOME/.bash_profile ]; then
	source $HOME/.bash_profile
fi

if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

if [ -d "$HOME/bin"  ] ; then
      PATH="$PATH:$HOME/bin"
fi

# Use colors for less, man, etc.
[[ -f ~/.config/less/termcap ]] && . $HOME/.config/less/termcap
alias dots='git --git-dir=/home/omar/.dots.git/ --work-tree=/home/omar'

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
