# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi


# export PATH="$HOME/tools:/usr/local/texlive/2022/bin/x86_64-linux:$PATH"
export PATH="$HOME/tools:$PATH"



# Start graphical server on user's current tty if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xwayland >/dev/null 2>&1 && $HOME/tools/wrappedhl
