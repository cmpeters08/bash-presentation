#!/usr/bin/bash


if [[ $1 -lt 10 ]]; then
	echo -e "$1 is less than 10"

else echo -e "$1 is not less than 10"

fi

if [[ $1 < 50 ]]; then
	echo -e "$1 is < 50"
else echo -e "$1 is > 50"
fi
