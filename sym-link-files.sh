#!/bin/bash

files=( .ctags .tmux.conf .vimrc .zshrc .bashrc .bash_profile .functions)
for f in "${files[@]}"
do
	rm "/Users/prasanna/$f"
	ln -s "/Users/prasanna/Documents/Official/Code/own-projects/pulligal/dot-files/$f" "/Users/prasanna/$f"
done
