# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# prev.: aussiegeek, re5et
ZSH_THEME="lukerandall"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git )

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/texlive/2017/bin/x86_64-darwin/:"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

## cd
alias ..='cd ..'
alias ...='cd ../..'

#Beginning of Terminal

# export LANG=en_US.UTF-8 subl
fortune -a | lolcat

###########
# ALIASES #
###########
#
#export CLASSPATH=$CLASSPATH:.:/Users/adrian/tools/Tools.zip

alias brokenzsh='./Users/adrian/.brokenzsh'

alias rm='rm -i'
alias dtrx='dtrx -v'

alias fuck='$(thefuck $(fc -ln -1))'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -pv"
alias histg="history | grep -ie"
alias topg="top | grep -ie"
alias lsg="ls -l | grep -ie"
alias lag="ls -la | grep -ie"
alias pingg="ping www.google.com -c3"
alias bingg="ping www.bing.com -c3"
alias youtube-viewer='youtube-viewer -C'
alias k='tree'
alias xmod='xmodmap ~/.Xmodmap'
alias ccat='pygmentize -g'
alias status='git status'

wtr() {
  if [ -z "$1" ]; then
    q="wttr.in/?0"
  else
    q="wttr.in/~$1?0"
  fi
  curl $q
}

# Lua/ LOVE
#for creating .love zips
alias ziplove='zip -9 -q -r'

##Mplayer shortcuts for music directories
# plays current directory on shuffle
alias mqs='mplayer -quiet -shuffle *'
# we need to go deeper (one directory deeper)
alias mqss='mplayer -quiet -shuffle {*,*/*}'

alias cdo='cd ~/gitrepos/na17a/'
cdoo() {
  echo "Repo: na17a"
  cd ~/gitrepos/na17a/
  echo "Updating repo..."
  git pull
}

#Todolist
t(){
  (cd /Users/adrian/gitrepos/todolist && todolist $@ && git commit -am "update todolist (autocommit)")
}

todo() {
  (cd /Users/adrian/gitrepos/todolist && todolist $@)
}

alias tl="todo l"
alias tll="todo l by project"

tgp() {
  (cd /Users/adrian/gitrepos/todolist && git push $@)
}

tgl() {
  (cd /Users/adrian/gitrepos/todolist && git pull $@)
}

tg() {
  (cd /Users/adrian/gitrepos/todolist && git $@)
}

alias deployws='rsync -avP /Users/adrian/gitrepos/na17a/Website/* na17a@pcai042.informatik.uni-leipzig.de:/home/na17a/public_html'
alias ii='cd ~/Google\ Drive/New2016/inf6'
alias rr='ranger ~/Google\ Drive/New2016/inf6'
