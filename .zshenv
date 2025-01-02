POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status asdf background_jobs time)
export ZSH=$HOME/.oh-my-zsh
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
POWERLEVEL10K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(sudo git history asdf)

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export GOPATH=$HOME/workspace/golibs
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH="$HOME/Library/Frameworks/Python.framework/Versions/3.7/bin/python3:$PATH"
export PATH=~/.local/bin:$PATH
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export NODE_PATH="/usr/local/lib/node_modules"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export TERM='xterm-color'
export CLICOLOR=1
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

alias resource='source ~/.zshenv'
alias be='bundle exec'
alias rs='be rails s'
alias rc='be rails c'
alias rct='RAILS_ENV=test be rails c'
alias rspec='be rspec'
alias di='bin/docker/interactive.sh bundle exec'
alias drc='di rubocop'
alias drspec='di rspec'
alias regentags='ctags --file-scope=no -R --kinds-Ruby=+Scfm --exclude=\*.html --exclude=\*.json --exclude=\*.xml --exclude=\*.xsd --exclude=\*.css --exclude=\*.log'
alias delete_orig="find . -name '*.orig' -delete"
alias branch_cleanup="git branch --merged | egrep -v '(^\*|master|dev|qa)' | xargs git branch -d"
alias weather="curl -4 http://wttr.in/Brecksville"
alias swagger-editor="docker pull swaggerapi/swagger-editor && docker run -d -p 8888:8080 swaggerapi/swagger-editor && open http://localhost:8888"
alias cov='open coverage/index.html'
alias ping='prettyping --nolegend'
alias top='sudo htop'
export BP_APP_ROOT=$HOME/workspace
alias work='tmuxinator start work'
alias gitk='open -na "GitKraken" --args -p $(pwd)'

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
