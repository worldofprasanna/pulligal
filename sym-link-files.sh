#!/bin/bash

files=( .ctags .tmux.conf .vimrc .zshrc .bashrc .bash_profile .functions .alias)
for f in "${files[@]}"
do
	rm "/Users/prasanna/$f"
	ln -s "`pwd`/dot-files/$f" "/Users/prasanna/$f"
done
