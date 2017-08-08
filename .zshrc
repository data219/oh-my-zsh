# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="madman"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ubuntu common-aliases command-not-found cp sudo screen history rsync kate history autojump brew git git-extras composer vagrant urltools dirpersist lol symfony2 web-search gitignore man colored-man colorize redis-cli chucknorris git-flow)

source $ZSH/oh-my-zsh.sh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.composer/vendor/bin" ] ; then
    PATH="$HOME/.composer/vendor/bin:$PATH"
fi

if [ -d "$HOME/.linuxbrew" ] ; then
    PATH="$HOME/.linuxbrew/bin:$PATH"
    export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
    export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

export PATH

# Compilation flags
export ARCHFLAGS="-arch x86_64"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

umask 002

# GPG SSH agent stuff
source ~/.gnupg/gpg-agent-info
export SSH_AUTH_SOCK=~/.gnupg/S.gpg-agent.ssh

# Tilix workaround
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Symfony settings
export SYMFONY_DEPRECATIONS_HELPER="weak"

export EDITOR="joe"
export BROWSER="google-chrome"

#rm -f ~/.lsyncd/lsyncd.lock > /dev/null 2>&1
#lsyncd.sh start

#mount share/1und1

# welcome
#if [ ! -f ./.welcome.pid ]; then
    ./welcome.sh
#    echo $! > ./.welcome.pid
#fi

chuck