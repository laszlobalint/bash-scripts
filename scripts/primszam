#!/bin/bash

echo "Write a number from 1 to 99: "
read a
let i=2

case $a in
	[!1-99])
        echo "Wrong number!"
        sleep 2
        ./$(basename $0) && exit
;;
esac

while [ $i -lt $a ]
do
	if [ `expr $a % $i` -eq 0 ]
	then
		echo "$a is not a prime number."
		echo "Since it is divisible by $i."
		sleep 2
		exit
	fi
	i=`expr $i + 1`
done

echo "$a is a prime number."
echo "Since it is only divisible by itself and 1."
sleep 2
./$(basename $0) && exit 
