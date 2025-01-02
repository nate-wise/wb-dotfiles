POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)
export ZSH=$HOME/.oh-my-zsh
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
POWERLEVEL10K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(sudo git history)

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

export PATH=~/.local/bin:$PATH

export NODE_PATH="/usr/local/lib/node_modules"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export TERM='xterm-color'
export CLICOLOR=1
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

alias resource='source ~/.zshenv'
alias regentags='ctags --file-scope=no -R --kinds-Ruby=+Scfm --exclude=\*.html --exclude=\*.json --exclude=\*.xml --exclude=\*.xsd --exclude=\*.css --exclude=\*.log'
alias delete_orig="find . -name '*.orig' -delete"
alias branch_cleanup="git branch --merged | egrep -v '(^\*|master|dev|qa)' | xargs git branch -d"
alias weather="curl -4 http://wttr.in/Brecksville"
alias work='echo Tmux not started due to running in devcontainer'

if [ "$TERM" = "xterm-color" ]; then
  export TERM=xterm-256color
fi

function whodoneit() {
    (set -e &&
        for x in $(git grep -I --name-only $1); do
            git blame -f -- $x | grep $1;
        done
    )
}
export EDITOR=nvim
source $ZSH/oh-my-zsh.sh

alias ll='ls -lath'

# eval "$(direnv hook zsh)"
