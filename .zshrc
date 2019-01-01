
#                      __
#                     /\ \
#        ____     ____\ \ \___   _ __   ___
#       /\_ ,`\  /',__\\ \  _ `\/\`'__\/'___\
#     __\/_/  /_/\__, `\\ \ \ \ \ \ \//\ \__/
#    /\_\ /\____\/\____/ \ \_\ \_\ \_\\ \____\
#    \/_/ \/____/\/___/   \/_/\/_/\/_/ \/____/
#
#


export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ------------------------------- #
#           Theme things          #
# ------------------------------- # 
  # I'm too lazy to make up my own color schemes
  cat ~/.cache/wal/sequences

  # Theme or "random"
  # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
  ZSH_THEME="tonotdo"

# ------------------------------- #
#  Sensitivity in autocompletion  #
# ------------------------------- # 
  # CASE_SENSITIVE="true" 
  # must be off for hyphen insensitivity
  #
  # HYPHEN_INSENSITIVE="true"
  # Note: - & _ interchangeable
  #

# ------------------------------- #
#          Plugins stuff          #
# ------------------------------- # 
  # Plugins        => ~/.oh-my-zsh/plugins/
  # Custom plugins => ~/.oh-my-zsh/custom/plugins/
    plugins=(
      git
      zsh-syntax-highlighting # must be loaded last
    )

# ------------------------------- #
#   Env vars, aliases & sourcing  #
# ------------------------------- # 
  source $ZSH/oh-my-zsh.sh

  # i eat garbage
    export LC_ALL="fr_FR.UTF-8"

  # Preferred editor
    export EDITOR='vim'

  # z – jump around
    . ~/Scripts/z.sh

  # Aliases
    alias cdcode="cd ~/Documents/Code"
    alias ls="exa"
    alias ..="cd .."
    alias ...="cd ../.."

# ------------------------------- #
#     Things VI mode related      #
# ------------------------------- # 
  # VI MODE BABY
    bindkey -v
  # FAST ASF BOYYY
    export KEYTIMEOUT=1

  # Here's a bit of trivia
  # the kamoji (face) has its eyes closed in insert mode
  # as it is the mode most commonly used, or, at least by default
  # as you enter normal mode, the kamoji awakens.
    function zle-line-init zle-keymap-select {
        RPS1="${${KEYMAP/vicmd/(◕ ‿ ◕ ✿)}/(main|viins)/(> ‿ < ✿)}"
        RPS2=$RPS1
        zle reset-prompt
    }
    zle -N zle-line-init
    zle -N zle-keymap-select

# ------------------------------- #
#          Util functions         #
# ------------------------------- # 

  function visual()
  {
    open $1 -a /Applications/Visual\ Studio\ Code.app
  }

  function feh()
  {
    open $1 -a /Applications/macfeh.app
  }

# ------------------------------- #
#  Things I might enable one day  #
# ------------------------------- # 
  # Uncomment the following line if you want to disable marking untracked files
  # under VCS as dirty. This makes repository status check for large repositories
  # much, much faster.
  # DISABLE_UNTRACKED_FILES_DIRTY="true"
  #
  # export SSH_KEY_PATH="~/.ssh/rsa_id"
  #
