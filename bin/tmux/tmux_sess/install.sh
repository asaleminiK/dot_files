#!/bin/bash

_filename="tmux_sess"
_filepath="$CONFIGDIR/bin/tmux/tmux_sess/tmux_sess"
_filelist="$CONFIGDIR/install_list"
_destination="$HOME/bin/tmux_sess"

grep "$_filename" "$_filelist" && cp -v "$_filepath" "$_destination"

unset _filename _filepath _filelist _destination
