#! /usr/bin/env fish
# Intro to Dante first challenge: Emdee for life in fish shell (replace IP and port)
set var (curl -s http://139.59.167.73:30220/ -c cookie.txt | grep -oP "(?<=<h3 align=\'center\'>).*(?=</h3>)" | tr -d "\n" | md5sum | cut -f 1 -d ' ')
# echo $var
# cat cookie.txt
curl -s http://139.59.167.73:30220/ -X POST -d hash=$var -b cookie.txt
