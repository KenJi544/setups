# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/dan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="simple"
#ZSH_THEME="agnoster" #the best so far
ZSH_THEME="half-life"
#ZSH_THEME="af-magic"
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
fasd
git
sudo
zsh-syntax-highlighting
zsh-autosuggestions
vi-mode
wd
)

source $ZSH/oh-my-zsh.sh

# User configuration

 export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"
 alias i3config="vim ~/.config/i3/config"

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -gAhF'
alias l='ls -ghF'
alias lgrep='ls -ghF | grep'
alias ..='cd ..'
alias ...='cd ../..'
alias rcp='rsync -azvh --progress'
alias xclock='xclock -brief -digital -bg "#212121"'
alias tl='tree -L'
alias tla='tree -a -L'
alias t='tree -a'

#path to my win_user_home
alias cdc="cd /mnt/c/Users/danut.baltag/"
alias cdd="cd /mnt/d"

#alias fortune="fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)"
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# keyboard layot
alias asdf='setxkbmap dvorak -option caps:swapescape'
alias aoeu='setxkbmap us'

# xclip to clipboard
alias clip='xclip -selection c'


# Fortune Cow
#if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then
   #fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)
#fi

#TERMITE
export TERM=xterm-color

# docker-compose
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'

#some git aliases
alias branch='git rev-parse --abbrev-ref HEAD'
alias repo='basename $(git rev-parse --show-toplevel)'

# az aliases
alias azb='az pipelines build'

alias azbl='az pipelines build list --definition-id'
alias azblo='az pipelines build list --open --definition-id'
alias azbw='watch -n 1 az pipelines build list --definition-id'

alias azbs='az pipelines build show --id'
alias azbso='az pipelines build show --open --id'

alias azbq='az pipelines build queue --branch `branch` --definition-id'
alias azbqo='az pipelines build queue --branch `branch` --open --definition-id'

alias azbdl='az pipelines build definition list'
alias azbdlo='az pipelines build definition --open list'
alias azbds='az pipelines build definition show --id'
alias azbdso='az pipelines build definition show --open --id'

alias azbq='az pipelines build queue --branch `branch` --definition-id'
alias azbqo='az pipelines build queue --branch `branch` --open --definition-id'

alias azr='az pipelines release'
alias azrd='az pipelines release definition'
alias azpr='az repos pr create -s $(branch) -r $(repo) --open -t'
alias azprd='az repos pr create -s $(branch) -r $(repo) --open -t dev'
