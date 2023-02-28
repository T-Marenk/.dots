#!/bin/bash

# Give home directory as a parameter to the script
# This can be done with $HOME
# Place for files
dir=$1

# Link files
stow --target=$dir home/
