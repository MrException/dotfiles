# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export LANG=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mrexception"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mrexception)

source $ZSH/oh-my-zsh.sh

export OLD_PATH=$PATH
SYS_PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
USER_PATH=$HOME/bin:$HOME/scripts:$HOME/local/bin:$HOME/.rvm/bin:./node_modules/.bin/
export PATH=$USER_PATH:$SYS_PATH
export NODE_PATH=/home/rob/local/jsctags/lib/jsctags/:$NODE_PATH
#export NODE_PATH=$HOME/local/node:$HOME/local/node/lib/node_modules

# make sure vim is set as the editor
export EDITOR="vim"

stty -ixon # disables ctrl-s freezing terminal
set -o vi # turns on vi mode

#initialize keychain
#keychain github

# source the keychain file for SSH keys
#if [ -z "$HOSTNAME" ]; then
#  HOSTNAME=$(uname -n)
#fi
#if [ -f $HOME/.keychain/$HOSTNAME-sh ]; then
#  . $HOME/.keychain/$HOSTNAME-sh
#fi
#if [ -f $HOME/.keychain/$HOSTNAME-sh-gpg ]; then
#  . $HOME/.keychain/$HOSTNAME-sh-gpg
#fi

# This loads RVM into a shell session.
#if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
#  . "$HOME/.rvm/scripts/rvm"
#else
#  if [[ -s "/usr/local/rvm/scripts/rvm" ]]; then
#    . "/usr/local/rvm/scripts/rvm"
#  fi
#fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

if [ -f ~/.functions ]; then
  . ~/.functions
fi

if [ -f ~/.local ]; then
  source ~/.local
fi
# a hack to get vim in the cli to look good in screen
#[ $TERM = "screen" ] && export TERM=rxvt-256color

# needed for ant support
#if [ -f /etc/profile.d/apache-ant.sh ]; then
#  source /etc/profile.d/apache-ant.sh
#fi

# Base16 Shell
BASE16_SCHEME="tomorrow"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL
