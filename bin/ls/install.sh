#!/bin/bash

_COLORS=true

[ -w $BASEDIR ] || exit
[ -w $CONFIGDIR ] || exit
[ -w $WRITEDIR ] || exit

_filename="ls_aliases"
_filepath="$CONFIGDIR/bin/ls/$_filename"
_filelist="$CONFIGDIR/install_list"
_destination="$WRITEDIR/$_filename"

if [ -e $_destination ]; then
	echo "$_destination already exists! aborting..."
else

	echo "installing ls_aliases"

	if which gls &>/dev/null; then
		if $_COLORS; then
			echo "alias ls='gls --color=auto'" >> $_destination
		else
			echo "alias ls='gls'" >> $_destination
		fi
	else
		echo "alias ls='ls --color=force'" >> $_destination
	fi

	cat $_filepath >> $_destination
fi
