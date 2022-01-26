#!/usr/bin/awk -f

BEGIN { print FS = "," }

#Wyświetlanie wszystkich linii
#{ print $0 }

#Wyświetlanie pierwszej kolumny
#{ print $1 }

#Wyświetlanie 1 i 3 kolumny
#{ print $1 "\t" $3 }

#Wyświetlanie kolumn w różnej kolejności
#{ print $3 "\t" $1 }

#Wyświetlanie linii które spełniają wzorzec
#/female/ { print $0 }
#/some hi*/ { print $0 }

#Liczenie wierszy, które spełniają wzorzec
#/female/ { ++ile }
#END { print "Ilość = " ile }

#Wyświetlanie linii, które mają określoną liczbę znaków
#length($0) < 68
