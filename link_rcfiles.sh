#!/bin/bash

files=("_bashrc" "_psqlrc" "_vimrc" "_zshrc" "_tigrc" "_tmux.conf")

cdir=`pwd`

for file in ${files[@]}; do
	dotfile=`echo $file | tr "_" "."`
	unlink $HOME/$dotfile
	ln -s $cdir/$file $HOME/$dotfile
done
