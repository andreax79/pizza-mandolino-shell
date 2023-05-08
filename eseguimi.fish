#!/usr/bin/env fish
# usage: fish eseguimi.fish install" to intall it
# usage: fish eseguimi.fish uninstall" to uninstall it
# restart shell to update changes
set arg $argv[1]

if test "$arg" = "install"
    cp italian.fish ~/.config/fish/conf.d/
    echo "Italian file installed to ~/.config/fish/functions/"
    echo "Reload fish"
else if test "$arg" = "uninstall"
    set confirm (read -P "Are you sure you want to remove the file? [y/N] ")
    if test "$confirm" = "y"
        rm ~/.config/fish/conf.d/italian.fish
        echo "Italian file removed from ~/.config/fish/functions/"
        echo "Reload fish"
    else
        echo "File removal cancelled"
    end
else
    echo "Invalid argument"
end
