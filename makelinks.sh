#!/bin/bash

# This script will create symlinks for dotfiles which are stored
# in a local git repository

dir=~/.dotfiles
backupdir=~/.dotfiles/old
files="Xresources tmux.conf vim vimrc xinitrc zprofile zshrc"

# create the backup folder
if [ ! -d $backupdir ]; then
    echo -n "Making a backup directory ..."
    mkdir -p $backupdir
    echo "Done"
fi

# switch to the dotfiles folder
cd $dir

# move any existing files to the backup folder, then symlink 
for file in $files; do
    echo "Making a backup of your $file ..."
    mv ~/.$file $backupdir/
    echo "Creating symlink for $file ..."
    ln -s $dir/$file ~/.$file
done
echo "Done"
