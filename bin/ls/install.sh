#!/bin/bash

[ -w $CREAMCHEESEDIR ] || exit

echo "installing ls_aliases"
destination="$CREAMCHEESEDIR/ls_aliases"
source_file="$BASEDIR/bin/bash/ls_aliases/ls_aliases"

echo '# aliases for LS ' > $destination

if which gls &>/dev/null; then
	if $NICECOLORS; then
		echo "alias ls='gls --color=force'" >> $destination
	else
		echo "alias ls='gls'" >> $destination
	fi
elif [ $P_OS = 'linux' ] && [ -n $p_LSCOLOR ]; then
	echo "alias ls='ls --color=force'" >> $destination
fi

cat $source_file >> $destination
