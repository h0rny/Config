#!/bin/sh

ln -sfn  $PWD/.vimrc  ~/.vimrc
ln -sfn  $PWD/.bash_aliases  ~/.bash_aliases
if [ -f ~/.bashrc ]; 
then
    mv ~/.bashrc{,.old}
fi
ln -sfn $PWD/.bashrc ~/.bashrc
