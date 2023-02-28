#!/bin/bash

# Give home directory as a parameter to the script
# This can be done with $HOME
# Place for files
dir=$1

# Link config files
for file in $(find .config -type f)
do
    # create directories for config files if they do not exists yet
	subdir="${file%/*}/"
	if [[ ! -d "$dir/$subdir" ]]
	then
		mkdir -p $dir/$subdir
	fi
	ln $file $dir/$file
done

# Link bash files

ln bash/.bashrc $dir/.bashrc
ln bash/.bash_profile $dir/.bash_profile
