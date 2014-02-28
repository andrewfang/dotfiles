alias clipboard='pbpaste'

export EDITOR='vi'

# Colored ls with marked directories and multi-columnar output
alias ls='ls -pGC'

#Best grep
alias grep='grep --colour=always -Gq'
# Make rm interactive, confirm every remove for safety
alias rm='rm -i'
set -o noclobber

# type ".." to go up one directory
alias ..="cd .."

# goes to Semester2 Directory
alias cdberk="cd ~/Dropbox/Berkeley\Junior/Semester2/"

alias cdangus="cd  ~/hackathon/angus/"

# bash control for itunes.
alias itunes=". $HOME/bin/itunes.sh"

alias cdhack="cd $HOME/hackathon/"

# Color and modify main prompt
PS1="\[$(tput bold)\]\w \[$(tput setaf 6)\]\u\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Tells the computer where to look
export PATH=/usr/loca/bin:$PATH

# Use vim's color scheme in man pages
export MANPAGER="col -b | /usr/share/vim/vim73/macros/less.sh -c 'set ft=man nomod nolist' -"

# glookup function
glookup () {
    echo 'Looking up your grades...'
	if [ $1 = '186' ]; then
	username=cs186-fc
	fi

	if [ $1 = '122' ]; then
	username=ee122-cu
	fi

	if [ $2 ]; then
		ssh $username@hive8.cs.berkeley.edu "glookup -s Total"
	else
		ssh $username@hive8.cs.berkeley.edu 'glookup'
	fi
}

# a faster scp function
fscp () {
	username=ee122-cu

	scp -r $1 $2@hive8.cs.berkeley.edu:~/
    echo '===Fast scp complete==='
}
