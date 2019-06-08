#!/usr/bin/bash


if [ $1 = "Ryan" ]; then
	echo -e "Ugg, Ryan? Really?!"
elif [[ $# -eq 1 ]]; then
	echo -e "Hello Friend, $1, that is NOT Ryan"

else
	echo -e "Hello new friend"
fi
