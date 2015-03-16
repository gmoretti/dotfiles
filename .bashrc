# =============================================================== #
#
# PERSONAL $HOME/.bashrc FILE for bash-3.0 (or later)
# By Giuseppe Moretti
#
# Last modified: sáb 14 mar 2015 14:38:09 CET 

#  This file is normally read by interactive shells only.
#+ Here is the place to define your aliases, functions and
#+ other interactive features like your prompt.
#
#  The majority of the code here assumes you are on a GNU
#+ system (most likely a Linux box) and is often based on code
#+ found on Usenet or Internet.
#
#  See for instance:
#  http://tldp.org/LDP/abs/html/index.html#  http://tldp.org/LDP/abs/html/index.html
#  http://www.caliban.org/bash
#  http://www.shelldorado.com/scripts/categories.html
#  http://www.dotfiles.org
#
# =============================================================== #
#Basic Aliases
alias ..='cd ..'
alias ~='cd ~'
alias rr='rm -R'

#Simple server wherever you execute the alias
alias server="python -m SimpleHTTPServer"

#Go to my projects dir
alias p="cd ~/projects"

#Sniff http traffic
alias sniff="sudo ngrep -d 'wlan0' -t '^(GET|POST) ' 'tcp and port 80'"

#Suspend to RAM
alias afk="dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend" 


#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

#Alias for sublime text:
alias st="/opt/SublimeText/sublime_text"

#Apt aliases
alias agi="sudo apt-get install"
alias acs="sudo apt-cache search"

##Function extract
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1		;;
			*.tar.gz)	tar xzf $1		;;
			*.bz2)		bunzip2 $1		;;
			*.rar)		rar x $1		;;
			*.gz)		gunzip $1		;;
			*.tar)		tar xf $1		;;
			*.tbz2)		tar xjf $1		;;
			*.tgz)		tar xzf $1		;;
			*.zip)		unzip $1		;;
			*.Z)		uncompress $1	;;
			*)			echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
