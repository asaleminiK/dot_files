#!/bin/bash

_filename="vimrc"
_filepath="$CONFIGDIR/bin/vimrc/$_filename"
_filelist="$CONFIGDIR/install_list"
_destination="$HOME/.$_filename"

grep "$_filename" "$_filelist" || exit

if grep "$_filename" "$_filelist" && [[ "$(cksum $_filepath | awk '{ print $1 }')" != "$(cksum $_destination | awk '{ print $1 }')" ]];
then
	if [ -e "$HOME/.vimrc" ];
	then
		mv ~/.vimrc "$HOME/.vimrc$(date '+%s')"
	fi
	cp -vn "$_filepath" "$_destination"
fi
