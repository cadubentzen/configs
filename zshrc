if [ "$TMUX" = "" ]; then tmux; fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/home/cadu/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="amuse"

plugins=(git)

source $ZSH/oh-my-zsh.sh
