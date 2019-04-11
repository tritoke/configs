setxkbmap gb                        	# tell the keyboard to use a GB keymap
if [[ 1 -eq 1 ]]
then
  ~/.fehbg                          	# set the background
  xautolock -locker slock -time 10 &	# auto lock the screen after 10 minutes
  slstatus &                        	# run the statusbar
  exec dwm                            # run the window manager
else
  startkde                            # use this if you want to run tools like ghidra.
fi
