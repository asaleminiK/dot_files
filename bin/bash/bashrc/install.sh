#!/bin/bash

_filename="bashrc"
_filepath="$CONFIGDIR/bin/bash/bashrc/bashrc"
_filelist="$CONFIGDIR/install_list"
_destination="$WRITEDIR/.bashrc"

grep "$_filename" "$_filelist" && cp -vn "$_filepath" "$_destination"

unset _filename _filepath _filelist _destination
