# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
# plugins=(git)

# #export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
# #export PATH=${PATH}:$HOME/.rvm/scritps/rvm # Add RVM to PATH for scripting
# # export PATH="$HOME/bin:$PATH"
# # export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
# # export NODE_PATH="/usr/local/lib/node_modules"
# # source $HOME/.rvm/scripts/rvm

# export TERM='xterm-color'
# alias ss='bundle exec script/server'
# alias be='bundle exec'
# alias rs='bundle exec rails server'
# alias rst='RAILS_ENV=test bundle exec rails server'
# alias rc='bundle exec rails console'
# alias rct='RAILS_ENV=test bundle exec rails console'
# alias rspec='bundle exec rspec'
# alias regentags='ctags --file-scope=no -R'
# alias delete_orig="find . -name '*.orig' -delete"
# alias elastic-up="~/workspace/elasticsearch/bin/elasticsearch"
# alias db_test_reset="RAILS_ENV=test rake db:drop db:create; mysql -u root movband_test < db/structure.sql"

# export CLICOLOR=1
# export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# function whodoneit() {
#     (set -e &&
#         for x in $(git grep -I --name-only $1); do
#             git blame -f -- $x | grep $1;
#         done
#     )
# }

# alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
# alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'

# export EDITOR=vi

# source $ZSH/oh-my-zsh.sh

# alias ls='ls -G'
# alias ll='ls -la'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
