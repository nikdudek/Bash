#!/usr/bin/awk -f

#Składnia awk
#[wzorzec] <program>

# $0 - cały wzorzec, $1 - 1 grupa, $2 - 2 grupa, ...

#Przykład1 (wypisanie wszystkich imion kończących się na asia)
/asia/ { print $0 }

#Przykład2 (wszystkie osoby, które mają na imię Zosia)
/^Zosia/ { print "Witaj " $0 }
/^Zosia/ { print "Witaj " $1 }
