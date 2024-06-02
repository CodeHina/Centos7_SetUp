#!/bin/csh

# ==================================================================
#                       path shell variable
#                       -------------------
# Lists directories in which to look for executable commands.
# ==================================================================
#set path = ( /bin /usr/local/bin /usr/bin )

# ==================================================================
#                       prompt shell variable
#                       ---------------------
# The string which is printed before reading each command from the
# terminal.  Currently set to display hostname, and current working
# directory.
# ==================================================================
# test if we are an interactive shell
if ($?prompt) then
	
	set red   = "%{\033[1;31m%}"
	set green = "%{\033[0;32m%}"
	set blue  = "%[\033[0;34m%}"
	set cyan  = "%{\033[0;36m%}"
	set end   = "%{\033[0m%}"
	set prompt = "${green}%n ${cyan}%/ ${end}$ "
	
	# auto expand
	set autolist = ambiguous
	set complete = enhance
	
	# .history
	set history = 1000
	set savehist = 100
	

	# ==================================================================
	#                       rmstar shell variable
	#                       ---------------------
	# If set, the user is prompted before 'rm *' is executed.
	# ==================================================================
	set rmstar

	# ==================================================================
	#                       noclobber shell variable
	#                       ------------------------
	# If set, output redirection will not overwrite existing files.
	# ==================================================================
	#set noclobber

	# ==================================================================
	# source complete.tcsh
	# ==================================================================
	if (`filetest -e /etc/complete.tcsh`) then
		source /etc/complete.tcsh
	endif

endif  # interactive shell

# ==================================================================
# set up useful aliases
# ==================================================================
alias m more

# ==================================================================
# network config
# ==================================================================
# add proxy
#setenv http_proxy http://192.168.0.198:10809
#setenv https_proxy http://192.168.0.198:10809
#setenv ftp_proxy $http_proxy
