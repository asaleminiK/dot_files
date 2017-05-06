#!/bin/bash

_filename="slate.conf"
_filepath="$CONFIGDIR/bin/slate/slate.conf"
_filelist="$CONFIGDIR/install_list"
_destination="$HOME/.slate"

grep "$_filename" "$_filelist" && cp -v "$_filepath" "$_destination"

unset _filename _filepath _filelist _destination
