#!/bin/bash
while x=0
do
clear
echo "$n"
echo "  _ _ _  _| |__| |__  ___ _ _|   \| __| |   "
echo " | '_| || | '_ \ '_ \/ -_) '_| |) | _|| |__ "
echo " |_|  \_,_|_.__/_.__/\___|_| |___/|___|____|"
echo "$n"
echo "                 BY: DeDogeGod              "
echo "                    v0.1b                   "
echo "--------------------------------------------"
echo "$n"
echo "$n"
echo "============================================"
echo "$n"
echo "(1) Delete inject.bin file"
echo "$n"
echo "(e) EXIT"
echo "$n"
echo "============================================"
read -p "What will you do? >>" option
case "$option" in
	1)
	clear
	echo "You chose Delete inject.bin file"
	sleep 1
	clear
	read -p "What is the name of your usb? >>" usb
	sleep 1
	echo "Please wait.."
	sleep 2
	cd /media/$USER/$usb
	[ -f /media/$USER/$usb/inject.bin ] && echo "File found" || echo "Syntax error: File not found"
	rm -fv /media/$USER/$usb/inject.bin
	sleep 1
	echo "Done"
	sleep 2
	;;
	e)
	clear
	echo "Exiting..."
	sleep 1
	echo "Bye..."
	sleep 1
	exit
	x=1
	;;
	*)
	clear
	echo "Syntax error: Invaild option"
	sleep 2
	;;
esac
done
