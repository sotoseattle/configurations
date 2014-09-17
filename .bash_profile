export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Para ver la vida en colores
export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD


# overriden below
# export PS1="\w \! \$ "

# Mis Aliases
alias la="ls -al"
alias ls="ls -FG"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias t='todo.sh -d ~/Documents/todo/todo.cfg'

alias edit="subl"

export GREP_OPTIONS='--color=auto'

export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/Documents/todo/todo.cfg'

alias psql_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias psql_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'


# added by Anaconda 1.7.0 installer
export PATH="//anaconda/bin:$PATH"



# From Brook Riggio https://www.codefellows.org/blog/finally-a-pretty-replacement-for-ri
function ref {
  open http://www.omniref.com/?q="$*"
}
# To access javascript console utility
ln /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc /usr/local/bin


########### added Sept 2014 #############

# For fast git ops
alias dskil="find . -name '*.DS_Store' -type f -delete"
alias refresh="git checkout master && dskil && git pull && git fetch -p"

# Source the git bash completion file
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-prompt.sh
  source ~/.git-completion.bash
  PS1='\e[0;34m\w$(__git_ps1 " [%s]")\$ \e[m'
fi
# code for easy room 126200

# To reload bashrc
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

########### added Sept 2014 #############

rvm use ruby-2.1.2

function serve {
  port="${1:-4000}"
  ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
}

source ~/.profile
