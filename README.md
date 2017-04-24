# dot files

Configuration files on my development machine.

Getting Started
---------------

1. Install vim-plug

    ```
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

1. Clone repo.

    ```
    git clone https://github.com/royge/dotfiles.git
    ```

1. Create ```.vimrc``` symlink.

    ```
    ln -s ~/dotfiles/.vimrc ~/.vimrc
    ```

1. Run ```vim``` and execute ```:PlugInstall```

1. Add `YCM` completion supports

    ```
    cd ~/.vim/plugged/YouCompleteMe
    python3 ./install.py --gocode-completer --tern-completer
    ```

1. Install ```tmux```

    ```sudo apt-get install tmux```

1. Create ```.tmux.conf``` symlink.

    ```
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
    ```

1. Install powerline

    ```pip install powerline-status```

1. Install powerline fonts.

    ```
    git clone https://github.com/powerline/fonts
    cd fonts
    ./install.sh
    mkdir ~/.fonts
    mv ~/.local/share/fonts/* ~/.fonts
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mv PowerlineSymbols.otf ~/.fonts/
    fc-cache -vf ~/.fonts/
    mkdir ~/.config/fontconfig && mkdir ~/.config/fontconfig/conf.d/
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
    ```

1. Install Tmux Themepack.

    ```
    git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
    ```

1. Reboot.

TODO
----

* More instructions.
