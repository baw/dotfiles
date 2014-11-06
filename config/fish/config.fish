# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins rvm up git mkcd activator jvm aa ssh-add haskell

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set PATH /Applications/Postgres.app/Contents/Versions/9.3/bin $PATH

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
