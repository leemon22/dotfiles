#!/bin/bash
# Setup script

# Variables
repodir=~/repos/dotfiles
backupdir=~/dotfiles_old

cd $repodir

# Create & check directories structure

if( ! test -d $backupdir ); then
	mkdir $backupdir
fi

dirstructure=$(find . -type d)
for dir in $dirstructure; do

	if $( ! test -d $backupdir/$dir ); then
		mkdir $backupdir/$dir
	fi

	if $( ! test -d ~/$dir ); then
		mkdir ~/$dir
	fi

done

# Copy files & saves previous config

files=$(find . -type f )
for file in $files; do

	if $( test -f ~/$file ); then
		mv ~/$file $backupdir/$file
	fi

	cp $file ~/$file
done
