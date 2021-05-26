#!/bin/bash
echo "Adjon meg egy kiírandó sor sorszámát: "
read a
let linenumber=(`cat data.dat | wc -l` -1)
echo "Sorok száma:"$linenumber
if [[ $a -lt 1 ]] || [[ $a -gt $linenumber ]]
	then exit
	else echo "Létezik."
fi
szemelyadat=`cat data.dat | grep ^$a.*`
echo "Adatok:" $szemelyadat
echo " "
sorszam=`echo $szemelyadat | cut -d";" -f1`
nev=`echo $szemelyadat | cut -d";" -f2`
szulhely=`echo $szemelyadat | cut -d";" -f3`
szulido=`echo $szemelyadat | cut -d";" -f4`
anyanev=`echo $szemelyadat | cut -d";" -f5`
szulnev=`echo $szemelyadat | cut -d";" -f6`
lakhely=`echo $szemelyadat | cut -d";" -f7`
nem=`echo $szemelyadat | cut -d";" -f8`
csalad=`echo $szemelyadat | cut -d";" -f9`
gyerek=`echo $szemelyadat | cut -d";" -f10`

echo "..............Sorszám:" $sorszam
echo "..................Név:" $nev 
echo ".......Születési hely:" $szulhely
echo "........Születési idő:" $szulido
echo "...........Anyja neve:" $anyanev
echo ".Anyja születési neve:" $szulnev
echo "..............Lakhely:" $lakhely
echo ".................Neme:" $nem
echo "......Családi állapot:" $csalad
echo ".......Gyerekek száma:" $gyerek

echo " "

echo date

let eletkor=`date +'%Y' | cut -d \. -f 1`-`echo $szulido | cut -d" " -f 1`
echo "Életkor:" $eletkor

echo " "

echo "Adjon meg egy sorszámot: "
echo $sorszam

if [ $csalad == "házas" ] 
then if [ $gyerek -ge 1 ]
	then echo "Név:"$nev "Családi állapot:"$csalad "Életkor:"$eletkor "Gyerekek száma:"$gyerek
	else echo "Név:"$nev "Családi állapot:"$csalad "Életkor:"$eletkor "Nincs gyereke."
	fi
else if [ $gyerek -ge 1 ]
        then echo "Név:"$nev "Családi állapot:"$csalad "Életkor:"$eletkor "Gyerekek száma:"$gyerek
        else echo "Név:"$nev "Családi állapot: egyedülálló. Életkor:"$eletkor "Nincs gyereke."
	fi
fi
