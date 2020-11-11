# Path to your oh-my-zsh installation.
export ZSH=/home/kevinverschaeve/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=${ZTHEME:-keversc}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo colored-man-pages z git-open)

# User configuration

export PATH="$PATH:/usr/local/bin/PhpStorm/bin:/usr/local/bin/java_jdk/bin:/usr/local/bin/gradle/bin:/usr/local/bin/android/bin:$HOME/.symfonycloud/bin"
# export MANPATH="/usr/local/man:$MANPATH"
# export ANDROID_HOME="$HOME/Android/Sdk"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# config perso
setopt autocd
setopt rmstarsilent
setopt auto_param_keys
#setopt GLOBSTARSHORT

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_ folder.
# For a full list of active aliases, run `alias`.
#

if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi


#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# TETRIS \0/
autoload -U tetris
zle -N tetris
bindkey ^T tetris

todofile="/home/kevinverschaeve/Documents/bordel/todo"
if [ -f "$todofile" -a -s "$todofile" ]; then
    todolist
fi


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C "/home/kevinverschaeve/.symfonycloud/bin/symfonycloud self:autocomplete --zsh" symfonycloud

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/home/kevinverschaeve'}
export PATH="$HOME/"'.platformsh/bin':/usr/local/go/bin:"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET


export GOPATH="/home/kevinverschaeve/go"


export GANTI_APP=/home/kevinverschaeve/perso/ganti
export GANTI_INSTALL=/home/kevinverschaeve/perso/ganti/install
export GANTI_APP_MYSQL=/home/kevinverschaeve/perso/ganti/mysqldata
export GANTI_APP_BACKUP=/home/kevinverschaeve/perso/ganti/backup
export GANTI_APP_CONFIG=/home/kevinverschaeve/perso/ganti/confi
