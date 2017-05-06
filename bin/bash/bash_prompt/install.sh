#!/bin/bash

_filename="bash_prompt"
_filepath="$CONFIGDIR/bin/bash/bash_prompt/bash_prompt"
_filelist="$CONFIGDIR/install_list"
_destination="$WRITEDIR/bash_prompt"

grep "$_filename" "$_filelist" && cp -vn "$_filepath" "$_destination"

unset _filename _filepath _filelist _destination
