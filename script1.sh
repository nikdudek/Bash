#!/usr/bin/bash

#Komentarz

#Deklaracja zmiennych
a="Pierwsza zmienna"
echo $a

echo

#Apostrofy
echo 'Tekst: $a'
echo "Tekst: $a"
echo "Tekst: \$a"

#Listowanie
echo `ls -a`

#Alternatywna metoda wykonania polecenia
echo $(ls -a)

echo

#Rodzaje zmiennych
b="Zmienna lokalna"
katalog=`pwd`
echo "Jestes w katalogu $katalog"

katalog=$(pwd)
echo "Jestes w katalogu $katalog"

pwd

echo

#Zmienne specjalne
echo "$0" #nazwa pliku
echo "$@" #wszystkie podane parametry

echo "Parametry skryptu: $@"

echo "$?" #kod powrotu ostatnio wykonanego polecenia
echo "$$" #pid procesu bierzącej powłoki

#Zmienne środowiskowe

#lokalne
#t="Tekst"
#echo $t
#bash
#echo $t

#globalne
export t="Tekst"

#usunięcie atrybutu eksportu dla danej zmiennej
export -n t #za t można podać dowolną zmienną

#wyświetlanie zmiennych globalnych
echo $(export -p)

#wyświetlanie zmiennych środowiskowych
echo `env`

echo

#zmienne tablicowe
tablica=(12 2 3 4 5 6)
echo ${tablica[0]}
echo ${tablica[*]}
echo ${tablica[@]}

#liczba znaków danego elementu tablicy
echo ${#tablica[0]}

#dodawanie elementów do tablicy
tablica[6]=7
echo ${tablica[*]}

tab[0]="Tak"
tab[1]="Nie"
echo ${tab[@]}

#usuwanie elementów tablicy
unset tablica[3]

#usuwanie całej tablicy
unset tablica[*]
echo ${tablica[@]}
