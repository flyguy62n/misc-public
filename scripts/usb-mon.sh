#!/bin/bash

dmesg
MISSING=0
FOUND=0

while true; do
	#grep for the string from lsusb
	lsusb | grep $1 >/dev/null

	# If the previous command didn't return any results, then increment MISSING, print dmesg and clear the dmesg log
	if [ $? -eq 1 ]; then
		MISSING=$(($MISSING+1))		
		if [ $MISSING = 1 ]; then
			echo "Not found / Was found for $FOUND cycles"
			FOUND=0
			dmesg
			dmesg -C
		fi
	else
		FOUND=$(($FOUND+1))
		if [ $FOUND -eq 1 ]; then
			echo "Found / Was missing for $MISSING cycles"
			MISSING=0
			sleep 1
			dmesg
		fi
	fi
	sleep 1
done