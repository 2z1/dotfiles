# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fishy"

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
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(archlinux git vim vi-mode history-substring-search zsh-syntax-highlighting emoji-clock)
source $ZSH/oh-my-zsh.sh
. /usr/share/zsh/site-contrib/powerline.zsh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/Code/bin
export PYTHONPATH=/usr/lib/python3.3/site-packages

# Other very important settings
autoload -U zmv
export EDITOR=vim
export VISUAL=vim

# Aliases
alias ls='ls -F --color'
alias la='ls -Fa'
alias lsa='ls -Flisa'
alias c='clear'
alias sudo='nocorrect sudo'
alias vi='vim'
alias weechat='weechat-curses'
