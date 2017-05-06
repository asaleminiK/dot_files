#!/bin/bash

# I'm doing this by hand because I have 
# nothing better to do

####
##	really fun env vars
####

# set this to true if you use mac os x

# set this to false if you don't like color
# affects: ls, less, 
export NICECOLORS=true

# set this to false if you don't have 
# have lots of disk space
# affects: 
export FUNSTUFF=true

# set this to false if you're easily offended
# affects: bash_memes
export POLINCORRECT=true

# set this to false if your screen is really small
# affects: bash_prompt, tmux_sess, tmux.conf
export BIGSCREEN=true

# set this to false if you're just using a terminal
#	  for the memes
# affects: bash_prompt, tmux_sess, developer
export NOTSKIDDIE=true

# do you like python3
# affects: developer
export LIKESGOODPYTHON=true

# set this to false if you prefer a light terminal theme
# affects: tmux.conf, .vimrc
export DARKMODE=true

# write install_list, variables
# TODO
## cat install_these | while read line
## do
## 	grep "true" --exclude "set this to" <<<"$line" &>/dev/null && echo TODO: how does awk work

# clean out install scripts
# TODO
# m a l w a r e
# or just set them up with template 


# write appropriate install scripts to suit needs
# TODO
# learn sed, and awk
# each directory 
# some directories might just need a simple cp
# ls needs something extra


# run install.sh
# TODO
# just ./install.sh
./install.sh
