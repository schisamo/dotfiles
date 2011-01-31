     _________________ 
    < Seth's Dotfiles >
     ----------------- 
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||

Big thanks to [Zach Holman](http://github.com/holman) for directory structure and Rakefile inspiration.

## install

    git clone git://github.com/schisamo/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    git submodule init
    git submodule update
    rake install

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `rake install`.
