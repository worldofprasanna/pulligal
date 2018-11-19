#!/bin/bash

files=( .ctags .tmux.conf .vimrc .zshrc .bashrc .bash_profile .functions)
for f in "${files[@]}"
do
	rm "/Users/vprasanna/$f"
	ln -s "`pwd`/dot-files/$f" "/Users/vprasanna/$f"
done
