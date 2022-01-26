#!/usr/bin/bash

#sprawdzanie ustawień
echo 'limits' | bc

echo

#podstawa liczb dla wejścia (ibase) danych wejściowych i wyjścia (obase)
echo 'ibase' | bc
echo 'obase' | bc

echo

#sprawdzanie dokładności (miejsca po przecinku)
echo 'scale' | bc
echo 'scale' | bc -l

echo

#proste operacje matematyczne
echo '2+4*5' | bc

echo

#pierwiastek
echo 'sqrt(16)' | bc

echo

#potęga
echo '5^2' | bc

echo

#liczba eulera
echo 'e(1)' | bc -l


#liczba eulera do 2 miejsc po przecinku
echo 'scale=2;e(1)' | bc -l

echo

#sinus
echo 's(45)' | bc -l

echo

#konwersja na system dwójkowy
echo 'obase=2;24' | bc

echo

#problem 1 (zawiecha)
echo '7^7^7' | bc
