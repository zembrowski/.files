#!/bin/bash

# Make symbolic links
ln -sf ~/.files/.aliases ~/.aliases
ln -sf ~/.files/.vimrc ~/.vimrc
ln -sf ~/.files/plugins.vim ~/.vim/plugins.vim
ln -sf ~/.files/.gvimrc ~/.gvimrc

# Optional
## MacVim
#sudo ln -s ~/Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim

## Vungle
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim +PluginInstall +qall

## Atom Dark color scheme
#mkdir -p ~/.vim/colors/
#wget -O ~/.vim/colors/atom-dark.vim https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark.vim
