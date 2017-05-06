#!/bin/bash

_filename="mac_os"
_filepath="$CONFIGDIR/bin/mac_os/mac_os"
_filelist="$CONFIGDIR/install_list"
_destination="$WRITEDIR/$_filename"

echo "installing mac_os aliases"

grep "$_filename" "$_filelist" && cp -vn "$_filepath" "$_destination"

unset _filename _filepath _filelist _destination
