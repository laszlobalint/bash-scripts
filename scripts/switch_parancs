#!/bin/bash

file='cat ./tmp'
content='cat ./tmp2'

clear

echo "Please, choose from the following menu options:
1. Read/Load a file.
2. Count the number of lines in the file.
3. Count the number of the words in the file.
4. Show the size of the file.
5. Unmount the file.
6. Exit from the program."

read menu

case $menu in
	$menu -lt 1 || $menu -gt 6
	echo "Wrong number!"
	sleep 2
	./$(basename $0) && exit
;;
esac

case $menu in
	"1")
	clear
	echo "Give the access route of a file (ex. /etc/passwd):"
	read file
	content='cat $file'
	echo $content > ./tmp2
	echo $file > ./tmp
	case -z "$content" in
		clear
		echo "Wrong access route."
		sleep 3
		./$(basename $0) && exit
	;;
	esac
	
	clear
	echo "File is loaded".
	./$(basename $0) && exit
;;
esac

case $menu in
	"6")
	rm -f ./tmp
	rm -f ./tmp2
;;
esac

case -z "$content" in
	clear
	echo "File is not loaded!"
	sleep
	./$(basename $0) && exit
;;
esac

case $menu in
	"2")
	clear
	nbrow=`cat $file | wc -l`
	echo "The file containts $nbrow rows."
	sleep 3
	./$(basename $0) && exit
;;
	"3")
	clear
	nbword=`cat $file | wc -w`
	echo "The file containts $nbword words."
	sleep 3
	./$(basename $0) && exit
;;
	"4")
	clear
	size=`du -b $file | cut -f 1`
	echo "The file uses $size byte space."
	sleep 3
	./$(basename $0) && exit
;;
	"5")
	clear
	rm -f ./tmp
	rm -f ./tmp2
	echo "File is unmounted."
	sleep 3
	./$(basename $0) && exit
;;
esac

