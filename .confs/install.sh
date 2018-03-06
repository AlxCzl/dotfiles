#!/bin/sh

dot_list="bashrc config gitignore mozilla msmtprc muttrc slrnrc ssh vim vimrc Xdefaults"

if [ ! -d "$AFS_DIR" ]; then
	if [ ! -d "$HOME" ]; then
		echo "ERR  :: Couldn't parse the \$HOME path, using parameter !"
		if [ ! -d "$1" ]; then
			echo "ERR  :: Input your home path in parameter !"
			exit 1
		else
			echo "INFO :: Using $1 as home path."
			DIR=$1
		fi
	fi
	echo "INFO :: Using $HOME as home path."
	DIR=$HOME
else
	echo "INFO :: Using $AFS_DIR as home path."
	DIR=$AFS_DIR
fi

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$DIR/dotfiles/.confs/$f" "$HOME/.$f"
done

echo "GOOD :: Sucessfuly moved doftiles to the dir."
echo "INFO :: Don't forget to launch vim and type :BundleInstall to install the plugins."
