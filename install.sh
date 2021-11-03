#!/bin/bash

set -e

if [[ "$OSTYPE" == "linux-gnu"*  ]]; then
    # Until ubuntu default vim package support clipboard, we will be installing from custom PPA.
    add-apt-repository ppa:jonathonf/vim
    apt update

    # Install required system libraries
    apt install vim vim-gtk3 tmux git curl build-essential cmake python3-dev
elif [[ "$OSTYPE" == "darwin"*  ]]; then
    brew install tmux
    brew install reattach-to-user-namespace
else
    echo "ERROR: Not tested to work in your current OS. Sorry."
    exit 1
fi

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim \
    --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create a symlink for .vimrc file
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# Install tmux theme.
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

vim +PlugInstall +qall

# cd ~/.vim/plugged/YouCompleteMe/
# python3 install.py --clangd-completer --go-completer --rust-completer
