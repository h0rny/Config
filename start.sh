#!/bin/bash

unlink ~/.tmux.conf
ln -s $PWD/.tmux.conf ~/.tmux.conf
unlink ~/.vimrc 

ln -s $PWD/.vimrc  ~/.vimrc
unlink ~/.bash_aliases
ln -s $PWD/.bash_aliases  ~/.bash_aliases
unlink ~/.key-bindings.zsh
ln -s $PWD/.key-bindings.zsh ~/.key-bindings.zsh

