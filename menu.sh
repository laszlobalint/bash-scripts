#!/bin/bash
clear
echo "Menü: 
1. Elindítja a 'parancs' programot.
2. Kiírja az aktuális dátumot.
3. Kiírja az aktuális könyvtárútvonalat.
4. Számolja meg a 'parancs' fájl sorait.
5. Számolja meg a 'parancs' fájl karaktereit.
6. Lépjen ki."
echo "Adj meg egy számot 1 és 5 között: "
read a
if [ $a == 1 ]
	then `echo ~/Documents/Bemutatkozo/parancs`
else if [ $a -ge 7 ] || [ $a -lt 1 ]
	then `echo ./$(basename $0) && exit`
else if [ $a == 2 ]
	then echo "A mai dátum:" `date`
else if [ $a == 3 ]
	then echo "Az aktuális elérési útvonal:" `pwd`
else if [ $a == 4 ]
	then echo "A 'parancs' fájl sorainak száma:" `cat ~/Documents/Bemutatkozo/parancs | wc -l`
else if [ $a == 5 ]
	then echo "A 'parancs' fájl szavainak száma:" `cat ~/Documents/Bemutatkozo/parancs | wc -w`
     if [ $a == 6 ]
	then exit
else `echo ./$(basename $0) && exit`
fi
fi
fi
fi
fi
fi
fi
