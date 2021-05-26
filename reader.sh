#! /bin/bash

fajl=`cat ./temp`
tartalom=`cat ./temp2`

clear
echo "Kérem válasszon az alábbi menüpontok sorszámai közül:"
echo "	1. Fájl beolvasása"
echo "	2. Fájl sorainak száma"
echo "	3. Fájl szavainak száma"
echo "	4. Fájl mérete"
echo "	5. Fájl kiadása"
echo "	6- Kilépés a programból."

read menu

if [ $menu -lt 1 ] || [ $menu -gt 6 ];
	then
		echo "Helytelen sorszám."
		sleep 2
		./$(basename $0) && exit
fi;

if [ $menu == 1 ];
	then
		clear
		echo "Adja meg a fájl elérési útvonalát és nevét:"
		echo "(Pl.: /etc/passwd)"
		read fajl
		tartalom=`cat $fajl`
		echo $tartalom > ./temp2
		echo $fajl > ./temp
		if [ -z "$tartalom" ];
			then
				clear
				echo "Hibás elérési útvonal."
				sleep 3
				./$(basename $0) && exit
		fi;
		clear
		echo "Fájl beolvasva."
		sleep 3
		./$(basename $0) && exit
fi;

if [ $menu == 6 ];
	then
		rm -f ./temp
		rm -f ./temp2
		exit
fi;


if [ -z "$tartalom" ];
	then
		clear
		echo "Nincs beolvasva fájl!"
		sleep 3
		./$(basename $0) && exit
fi;

if [[ $menu == 2  ]];
	then
		clear
		soroksz=`cat $fajl | wc -l`
	        echo "A fájl $soroksz sorból áll."
		sleep 3
		./$(basename $0) && exit
fi;

if [[ $menu == 3  ]];
	then
	        clear
		szavaksz=`cat $fajl | wc -w`
		echo "A fájl $szavaksz szóból áll."
		sleep 3
		./$(basename $0) && exit
fi;

if [[ $menu == 4  ]]
	then
		clear
		meret=`du -b $fajl | cut -f 1`
		echo "A fájl $meret byte-ot foglal."
		sleep 3
		./$(basename $0) && exit
fi;

if [[ $menu == 5 ]];
	then
		clear
		rm -f ./temp
		rm -f ./temp2
		echo "Fájl kiadva."
		sleep 3
		./$(basename $0) && exit
fi;
