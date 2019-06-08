#!/usr/bin/bash
#Gary gets a special greeting
if [[ $1 == Gary ]]; then
	echo -e "Hi $1, thanks for inviting me to present!"
else echo -e "Hello $1, it's lovely to meet you."
fi