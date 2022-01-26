#!/usr/bin/bash

<<KOMENTARZ
Operatory testów arytmetycznych

-lt less then
-le less or equal
-eq equal
-ge greater or equal
-gt greater then
-ne not equal

KOMENTARZ

#Instrukcje warunkowe
if [ `id -u` -eq 0 ]; then
	echo "root"
else
	echo "nie-root"
fi

echo " "

opcja=$1

if [ $opcja -gt 0 ]; then
	echo "Zielony"
elif [ $opcja -lt 0 ]; then
	echo "Czerwony"
else
	echo "Żółty"
fi

echo " "

#Petle for
nr=0
for plik in `ls`; do
	echo "$nr:" $plik
	nr=$(( $nr + 1 ))
done

echo " "

for i in 1 2 3 4 5 6 ; do
	echo "Nr: $1"
done

echo " "

#Instrukcja warunkowa case
case $opcja in
1)
 echo "Zielony" ;;

2)
 echo "Czerwony" ;;

*)
 echo "Żółty"
esac

echo " "

#Pętla select

echo "Wybierz liczbę od 1 do 3"
select number in 1 2 3
do
 case $number in
  1) echo "Niebieski" ;;
  2) echo "Czerwony" ;;
  3) echo "Żółty" ;;
  *) echo "Biały"
  esac
break
done

echo " "

#Pętla while
i=0
while [ $i -lt 10 ]; do
	echo "Nr: $i"
	i=$(( $i + 1 ))
done

echo " "

i=0
until [ $i -gt 10 ]; do
	echo "Nr: $i"
	i=$(( $i + 1 ))
done

<<KOMENTARZ
Porównywanie stringów

str1 = str2   -> identyczność
str1 != str2  -> różnica
str1 < str2   -> str1 mniejsze od str2
str1 > str2   -> str1 większe od str2
-n str1       -> str1 niepusty (długość jest większa od 0)
-z str1       -> str1 pusty (długość = 0)
KOMENTARZ

echo " "

str1="6"
str2="12"

`test $str1 = $str2`;echo $?
`test $str1 != $str2`;echo $?
`test $str1 \< $str2`;echo $?
`test $str1 \> $str2`;echo $?
`test -n $str1`;echo $?
`test -z $str1`;echo $?

<<KOMENTARZ
Atrybuty plików:

-a plik (-e plik)	-> plik istnieje
-d plik 		-> plik istnieje i jest kotalogiem
-r plik			-> użytkownik ma prawo do odczytu pliku
-f plik			-> plik istnieje i jest zwykłym plikiem
-s plik			-> plik istnieje i jest niepusty
-w plik 		-> użytkownik ma prawo do zapisu pliku
-x plik			-> użytkownik ma prawo do wykonania pliku
-N plik			-> plik zmodyfikowany od ostatniego odczytu
-O plik			-> użytkownik jest współwłaścicielem pliku
-G plik			-> użytkownik należy do grupy pliku
plik1 -nt plik2		-> porównujemy czasy modyfikacji plików
plik1 -ot plik2		-> "newer than" i "older than"

KOMENTARZ
