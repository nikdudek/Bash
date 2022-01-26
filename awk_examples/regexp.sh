#!/usr/bin/bash

#Przykład1 - kropka
echo -e "kot\nplot\npot\npit\npat" | awk '/p.t/'

#Przykład2 - początek linii
echo -e "Test\nTenis\nTeraz\nTenor" | awk '/^Ten/'

#Przykład3 - koniec linii
echo  -e "kot\nplot\npot\npit\npat" | awk '/ot$/'

#Przykład4 - dopasowanie
echo -e "kot\nlot\npot\npit\npat" | awk '/[pl]ot/'

#Przykład5 - poza dopasowaniem
echo -e "kot\nlot\npot\npit\npat" | awk '/[^pl]ot/'

#Przykład6 - alternatywa
echo -e "kot\nlot\npot\npit\npat" | awk '/pot|lot/'

#Przykład7 - zero lub jedno wystąpienie
echo -e "sto\nstos\nstoss" | awk '/stos?/'

#Przykład8 zero lub więcej wystąpień
echo -e "sto\nstop\nstopp" | awk '/stop*/'

#Przykład9 - jedno lub więcej wystąpień
echo -e "112\n242\n123\n331\n456\n222" | awk '/2+/'

#Przykład10 - grupowanie
echo -e "Nowy traktor\nNowy rower\nNowy samochod\nNowy kombajn" \
 | awk "/Nowy (traktor|kombajn)/'
