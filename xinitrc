setxkbmap gb                      	# tell the keyboard to use a GB keymap
# TODO: make this into a case statement
~/.fehbg                          	# set the background
xautolock -locker slock -time 10 &	# auto lock the screen after 10 minutes
slstatus &                        	# run the statusbar
exec dwm                            # run the window manager
# startkde                          # use this if you want to run tools like ghidra.
