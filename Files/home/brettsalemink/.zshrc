# === ZSH Features to Autoload ===
#autoload -U zmv
# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:$PATH
 export PATH=$HOME/lib/sh:$PATH
# Path to your oh-my-zsh installation.
  export ZSH=/home/brettsalemink/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="Soliah"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
 COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
 export SSH_KEY_PATH="~/.ssh/rsa_id"


#== Added for NVM ==
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"
#== Added by Brett Salemink ==
# alias v-stop="sudo systemctl stop openvpn@pia-midwest.service"
# alias v-start="sudo systemctl start openvpn@pia-midwest.service"
# alias v-status="sudo systemctl status openvpn@pia-midwest.service"
# alias v-restart="sudo systemctl restart openvpn@pia-midwest.service"

# alias t-stop="sudo systemctl stop transmission-daemon"
# alias t-start="sudo systemctl start transmission-daemon"
# alias t-status="sudo systemctl status transmission-daemon"
# alias t-restart="sudo systemctl restart transmission-daemon"
#

# alias h-stop="sudo systemctl stop hostapd.service"
# alias h-start="sudo systemctl start hostapd.service"
# alias h-status="sudo systemctl status hostapd.service"
# alias h-restart="sudo systemctl restart hostapd.service"

# alias docker-stop="sudo systemctl stop docker.service"
# alias docker-start="sudo systemctl start docker.service"
# alias docker-status="sudo systemctl status docker.service"
# alias docker-restart="sudo systemctl restart docker.service"
	
#alias plex-stop="sudo systemctl stop plexmediaserver.service"
#alias plex-start="sudo systemctl start plexmediaserver.service"
#alias plex-status="sudo systemctl status plexmediaserver.service"
#alias plex-restart="sudo systemctl restart plexmediaserver.service"
export PATH="$PATH:$HOME/.local/bin"
export PYTHONPATH="/usr/lib/python3/dist-packages/:$PYTHONPATH"
