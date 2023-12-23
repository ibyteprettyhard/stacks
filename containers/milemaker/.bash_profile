# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/usr/bin:/usr/sbin
TERM=vt220

export TERM PATH

# This executes relitive MileMaker Paths
. /usr/micro/profile.current 

# This launches the program executable
/usr/micro/g-current/exe/main

# Logout on Exit
logout