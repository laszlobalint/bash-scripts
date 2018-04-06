#!/bin/bash

file=`cat ./tmp`
content=`cat ./tmp2`

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
	[!1-6])
	echo "Wrong number!"
	sleep 3
	./$(basename $0) && exit
;;
esac

case $menu in
	1)
	clear
	echo "Give the access route of a file (ex. /etc/passwd):"
	read file
	content=`cat $file`
	echo $content > ./tmp2
	echo $file > ./tmp
	if [ -z "$content" ];
		then
		clear
		echo "Wrong filename / route!"
		sleep 2
		./$(basename $0) && exit
	fi;
	clear
	echo "File is loaded."
	sleep 2
	./$(basename $0) && exit
;;
        6)
        rm -f ./tmp
        rm -f ./tmp2
        echo "Good bye!"
        sleep 3
        exit
;;
	2)
	clear
	if [ -z "$content" ];
                then
                clear
                echo "File is not loaded!"
		sleep 2
                ./$(basename $0) && exit
        fi;
        clear
	nbrow=`cat $file | wc -l`
	echo "The file contains $nbrow rows."
	sleep 3
	./$(basename $0) && exit
;;
	3)
	clear
	if [ -z "$content" ];
                then
                clear
                echo "File is not loaded!"
                sleep 2
                ./$(basename $0) && exit
        fi;
	nbword=`cat $file | wc -w`
	echo "The file containts $nbword words."
	sleep 3
	./$(basename $0) && exit
;;
        4)
        clear
        if [ -z "$content" ];
                then
                clear
                echo "File is not loaded!"
                sleep 2
                ./$(basename $0) && exit
        fi;
        size=`du -b $file | cut -f 1`
        echo "The file uses $size byte space."
        sleep 3
        ./$(basename $0) && exit
;;
        5)
        clear
	if [ -z "$content" ];
                then
                clear
                echo "File is not loaded!"
                sleep 2
                ./$(basename $0) && exit
        fi;
        rm -f ./tmp
        rm -f ./tmp2
        echo "File is unmounted."
        sleep 3
        ./$(basename $0) && exit
;;
esac
