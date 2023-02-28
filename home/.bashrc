# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

for DOTFILE in `find ~/.dots/bash`
do
	[ -f "$DOTFILE" ] && . "$DOTFILE"
done

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/tume/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/tume/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f /home/tume/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/tume/.config/synth-shell/better-ls.sh
fi

# Bell sound
if [ -n "$DISPLAY" ]; then
  xset b off
fi
. "$HOME/.cargo/env"
source /home/tume/.tmc-autocomplete.sh || true
source /home/tume/.tmc-autocomplete.sh || true
