#!/bin/bash

_filename="bash_aliases"
_filepath="$CONFIGDIR/bin/bash/bash_aliases/bash_aliases"
_filelist="$CONFIGDIR/install_list"
_destination="$WRITEDIR/.bash_aliases"

grep "$_filename" "$_filelist" && cp -vn "$_filepath" "$_destination"

unset _filename _filepath _filelist _destination
