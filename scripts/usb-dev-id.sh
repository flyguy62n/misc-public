#!/bin/bash

echo "Taking snapshot of /dev directory"
ls /dev > /tmp/before.txt

read -p "Insert device and press [Enter] to continue..."

ls /dev > /tmp/after.txt

echo "Displaying differences"
diff -y --suppress-common-lines /tmp/before.txt /tmp/after.txt

echo "Removing files"
rm /tmp/before.txt /tmp/after.txt

