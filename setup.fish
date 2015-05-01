#!/usr/local/bin/fish

function setup
    set files (ls -p | grep -v /)
    
    for f in $files
	rm ~/.$f
	unlink ~/.$f
        ln -s ~/dotfiles/$f ~/.$f
    end
end

setup
