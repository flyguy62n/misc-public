#!/bin/bash

read -p "Make sure the device is NOT plugged in and press [Enter] to continue..."

echo "Taking snapshot of /dev directory"
ls /dev > /tmp/before.txt

read -p "Insert device and press [Enter] to continue..."

ls /dev > /tmp/after.txt

echo -e "BEFORE\t\t\t\t\t\t\t\tAFTER"
diff -y --suppress-common-lines /tmp/before.txt /tmp/after.txt

echo "Removing /tmp files"
rm /tmp/before.txt /tmp/after.txt

