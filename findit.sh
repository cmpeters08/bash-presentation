#!/usr/bin/bash

#find ~ -name 'hello*.sh' 2>/dev/null -mtime -3


NAME=$1
FILETYPE=$2
USAGE="Useage: ./findit.sh [file name] OPTIONAL [file type (.txt, .md, .sh, .py, etc)] [recently modified (in the past x days] \n Example: ./findit.sh hello py 7 \n will look for python files, named hello, that have been modified in the past 7 days"

GREEN="\e[1;92m"
NORMAL="\e[0m"

if [[ $# -eq 0 ]]; then
	echo -e ${USAGE}
	exit 1  #exit, exits the script, 1 is the catchall code for generic errors
fi
if [[ $# -eq 1 ]]; then 
	echo -e "Searching for everything named ${GREEN}$1${NORMAL}..."
	find ~ -name $1'*' 2>/dev/null
	exit 0 #0 is the generic status code for success

elif [[ $# -eq 2 ]]; then
	echo -e "Searching for ${GREEN}$2${NORMAL} files named ${GREEN}$1${NORMAL}"
	find ~ -name $1'*'$2 2>/dev/null
	exit 0

elif [[ $# -eq 3 ]]; then
	echo -e "Searching for ${GREEN}$2${NORMAL} files named ${GREEN}$1${NORMAL}, that were modified in the past ${GREEN}$3${NORMAL} days"
	find ~ -name $1'*'$2 2>/dev/null -mtime -$3
	exit 0
else 
	echo -e ${USAGE}
fi
