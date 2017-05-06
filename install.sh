#!/bin/bash

# bash_source gives source filename of script
# export? eh
CONFIGDIR="$( cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )"
WRITEDIR="$HOME/._dotfiles"

# setup writedir if not already done
if [ ! -d $WRITEDIR ]
then
	echo "Setting up dotfile directory ($WRITEDIR)"
	mkdir "$WRITEDIR"
fi

find "$CONFIGDIR/bin" -name "install.sh" | while read file
do
	echo $file
	if grep $(basename "$(dirname "$file")") "$CONFIGDIR/install_list"
	then
		echo "installing $(basename "$(dirname "$file")")"
		. "$file"
	fi
done
