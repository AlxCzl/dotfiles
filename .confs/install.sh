#!/bin/bash

dot_list="bashrc config gitignore mozilla msmtprc muttrc slrnrc ssh vim vimrc Xdefaults"
dotdir=$(cd `dirname $0` && pwd)

if [ ! -d "$AFS_DIR" ]; then
	if [ ! -d "$HOME" ]; then
		echo -e "\033[0;31mERR\033[0m  :: Couldn't parse the \$HOME path, using parameter !"
		if [ ! -d "$1" ]; then
			echo -e "\033[0;31mERR\033[0m  :: Input your home path in parameter !"
			exit 1
		else
			echo -e "\033[1;33mINFO\033[0m :: Using \033[0;31m$1\033[0m as home path."
			DIR=$1
		fi
	fi
	echo -e "\033[1;33mINFO\033[0m :: Using \033[0;31m$HOME\033[0m as home path."
	DIR=$HOME
else
	echo -e "\033[1;33mINFO\033[0m :: Using \033[0;31m$AFS_DIR\033[0m as home path."
	DIR=$AFS_DIR
fi

if [ ! -d "$dotdir/backup" ]; then
	mkdir $dotdir/backup
fi

for f in $dot_list; do
  	if [ -L "$HOME/.$f" ]; then
		echo -e "\033[1;33mINFO\033[0m :: Deleting symlink .$f"
		rm -rf "$HOME/.$f"
	else
		echo -e "\033[1;33mINFO\033[0m :: Backing up \033[0;31m.$f\033[0m to \033[0;31m$dotdir/backup\033[0m"
		mv "$HOME/.$f" "$dotdir/backup/"
	fi
	ln -s "$dotdir/$f" "$HOME/.$f"
done

echo -e "\033[0;32mDONE\033[0m :: Sucessfuly installed the dotfiles."
echo -e "\033[1;33mINFO\033[0m :: Don't forget to launch vim and type \033[0;31m:BundleInstall\033[0m to install the plugins."
